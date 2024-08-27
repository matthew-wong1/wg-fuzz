struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)));

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec3<f32>, 32>;

var<private> global3: vec2<u32>;

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global3 = min(firstTrailingBit(select(vec2<u32>(global4.x, global4.x), vec2<u32>(14483u, 1u), select(true, false, false))) & ~vec2<u32>(53345u | global3.x, global3.x), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3.x, global4.x) | countOneBits(vec2<u32>(1u, 12212u)), abs(vec2<u32>(global3.x, global4.x)), ~(~vec2<u32>(0u, global4.x))), vec2<u32>((66455u << (u_input.d % 32u)) >> (global4.x % 32u), global3.x)));
    global4 = vec2<u32>((1u << (_wgslsmith_div_u32(74361u, global3.x) % 32u)) ^ global4.x, abs(~u_input.d)) | vec2<u32>(~global4.x, u_input.d);
    let var_0 = u_input.a.zy;
    var var_1 = Struct_1(select(vec3<bool>(true, !all(vec2<bool>(false, false)), false), vec3<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, true)), true), firstTrailingBit(var_0.x) < ~(~0i)));
    global2 = array<vec3<f32>, 32>();
    return 33880u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(global3.x, 27u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, func_3()), 3u)];
    var var_1 = vec2<i32>(0i, countOneBits(2147483647i));
    let var_2 = !select(vec4<bool>(true, true, arg_1.a.x, all(arg_1.a)), vec4<bool>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) != _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), !var_0.a.x, arg_1.a.x, true), true);
    let var_3 = 12501i;
    return (select(~(~u_input.b), 1556u, true) ^ global3.x) | 49366u;
}

fn func_1() -> vec3<i32> {
    global0 = array<Struct_1, 27>();
    global3 = vec2<u32>(~_wgslsmith_mod_u32(global4.x << (func_2(vec2<f32>(-1000f, 785f), global1[_wgslsmith_index_u32(4294967295u, 3u)]) % 32u), 34395u), 1u);
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 3u)];
    let var_1 = select(select(!vec4<bool>(!var_0.a.x, var_0.a.x, true, true), select(!(!vec4<bool>(false, false, var_0.a.x, true)), select(select(vec4<bool>(false, var_0.a.x, var_0.a.x, true), vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(var_0.a.x, true, var_0.a.x, true)), !vec4<bool>(var_0.a.x, true, var_0.a.x, false), u_input.a.x > -5942i), select(vec4<bool>(false, true, true, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), any(vec4<bool>(var_0.a.x, true, true, var_0.a.x)))), select(vec4<bool>(true, var_0.a.x, false, !var_0.a.x), !select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(var_0.a.x, true, false, var_0.a.x), var_0.a.x), -837f == _wgslsmith_f_op_f32(ceil(-200f)))), !select(select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(false, true, true, true), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), !vec4<bool>(false, var_0.a.x, true, true)), !vec4<bool>(var_0.a.x, var_0.a.x, true, true), any(select(vec4<bool>(true, false, var_0.a.x, true), vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)))), !any(var_0.a.zz));
    let var_2 = 1u;
    return (reverseBits(vec3<i32>(0i, u_input.c, ~u_input.a.x)) & vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 36890i, u_input.a.x, 2147483647i), vec4<i32>(u_input.c, 46210i, u_input.a.x, 24402i)), -1i, u_input.a.x)) ^ _wgslsmith_mult_vec3_i32(countOneBits(~countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.a.x))), abs(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_1();
    let var_1 = abs(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2134f, 1341f))), Struct_1(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false))));
    var var_2 = global1[_wgslsmith_index_u32(abs(1u), 3u)];
    let var_3 = select(vec4<bool>(!(!var_2.a.x) | all(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)), var_2.a.x, select(var_2.a.x, all(select(var_2.a, var_2.a, var_2.a)), true), var_2.a.x), !select(!vec4<bool>(false, var_2.a.x, var_2.a.x, true), !(!vec4<bool>(true, var_2.a.x, true, false)), vec4<bool>(true, var_2.a.x | true, select(true, var_2.a.x, var_2.a.x), false)), !var_2.a.x);
    var var_4 = true;
    let var_5 = global0[_wgslsmith_index_u32(~global4.x, 27u)];
    var var_6 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f))), 512f), -40555i);
}

