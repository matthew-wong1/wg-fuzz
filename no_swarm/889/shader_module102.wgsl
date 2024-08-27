struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(4294967295u, 0u, 1u, 1u, 12611u, 0u, 12662u, 47788u, 0u, 43752u, 4294967295u, 4294967295u, 43938u, 1u, 75994u, 48454u, 1u, 69864u, 49956u, 19954u, 972u, 67964u, 111398u, 2126u, 2269u, 0u, 4294967295u, 91276u, 1u, 24048u);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<Struct_3, 21>;

var<private> global3: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~(~(~1u)), 21u)];
    global3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(global3.a.x * 1107f), -192f, 164f, -1000f), var_0.d, Struct_1(all(select(!vec4<bool>(true, var_0.c.a, true, false), !vec4<bool>(false, global3.c.a, true, false), var_0.b.b <= 57007u)), var_0.d.a.b), global3.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(var_0.a.zz));
    var var_2 = -u_input.b.x ^ _wgslsmith_mult_i32(u_input.a.x, u_input.b.x | 1i);
    let var_3 = -u_input.a.x;
    return var_0.b.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    let var_0 = select(!(!(!vec2<bool>(arg_1.a.a, false))), vec2<bool>(arg_1.a.a, !global3.d.a.a), select(vec2<bool>(51314u < (arg_1.b ^ 0u), true), !select(!vec2<bool>(global3.c.a, arg_1.a.a), vec2<bool>(arg_1.a.a, false), all(vec4<bool>(false, false, false, arg_1.a.a))), global3.d.a.b <= -1921f));
    global0 = array<u32, 30>();
    global3 = Struct_3(global3.a, Struct_2(global1[_wgslsmith_index_u32(~0u, 20u)], 1u | global3.b.b), arg_1.a, global3.b);
    return global2[_wgslsmith_index_u32(1u << (global3.b.b % 32u), 21u)];
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<Struct_3, 21>();
    var var_0 = vec4<bool>(arg_0.a, true, global3.c.a, !global3.c.a);
    let var_1 = func_3(vec3<i32>(i32(-1i) * -2147483647i, -u_input.a.x, u_input.a.x), Struct_2(global1[_wgslsmith_index_u32(~select(1u, 19094u, any(vec4<bool>(arg_0.a, true, true, false))), 20u)], func_2()));
    let var_2 = vec3<i32>(abs(i32(-1i) * -1i), _wgslsmith_sub_i32(u_input.c, -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.c, u_input.c)), u_input.b | u_input.b)), 41501i | (u_input.b.x | countOneBits(u_input.c)));
    var var_3 = func_3(var_2, Struct_2(Struct_1((1u > global3.d.b) & true, arg_0.b), min(_wgslsmith_clamp_u32(var_1.b.b ^ global0[_wgslsmith_index_u32(global3.d.b, 30u)], global3.b.b, ~4294967295u), global0[_wgslsmith_index_u32(firstTrailingBit(global3.d.b), 30u)]))).d;
    return !var_0.xwy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1398f * -456f) * _wgslsmith_f_op_f32(step(global3.b.a.b, global3.c.b))) * _wgslsmith_f_op_f32(-1472f + _wgslsmith_f_op_f32(global3.a.x + global3.d.a.b)))));
    let var_1 = -496i;
    let var_2 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(0u, 52975u)), 21u)];
    var var_3 = any(func_1(var_0));
    let var_4 = vec3<bool>(func_1(func_3(u_input.b >> (vec3<u32>(4294967295u, 103773u, global3.b.b) % vec3<u32>(32u)), Struct_2(func_3(vec3<i32>(22310i, 65815i, -25857i), Struct_2(Struct_1(var_0.a, -559f), var_2.b.b)).d.a, var_2.d.b)).b.a).x, !(!select(var_0.a, true, var_0.a)), var_2.d.a.a);
    global2 = array<Struct_3, 21>();
    let var_5 = global3.a.ww;
    global2 = array<Struct_3, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

