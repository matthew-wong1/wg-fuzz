struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(0u, 14674u, 0u), vec3<u32>(15079u, 34269u, 0u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 584u), vec3<u32>(0u, 4294967295u, 2160u), vec3<u32>(3805u, 1u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 1u, 54009u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = firstTrailingBit(50346u);
    var var_1 = Struct_1(1677f, arg_0.b);
    var var_2 = u_input.d.x;
    var var_3 = select(!select(select(vec3<bool>(true, false, global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false)), true && global0.x), !select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), global0.x), !vec3<bool>(true, global0.x, false)), select(!select(select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, true, global0.x), true), !vec3<bool>(global0.x, true, global0.x), false), vec3<bool>(true, any(vec3<bool>(global0.x, true, false)), !(false | global0.x)), vec3<bool>(global0.x == global0.x, all(!vec2<bool>(global0.x, global0.x)), u_input.c == 6457i)), global0.x);
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1474f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1)) + -1013f), reverseBits(~(i32(-1i) * -17376i)));
    let var_2 = ~global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(7157u, 120865u), 10628u)), 8u)] << (reverseBits(select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d.x), vec3<u32>(u_input.e.x, 3194u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(3590u, u_input.a.x, u_input.d.x) >> (vec3<u32>(u_input.d.x, u_input.d.x, 39615u) % vec3<u32>(32u)), u_input.d.zxw), global0.x)) % vec3<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a - var_0.a))) + var_1.a)), -20522i);
    return !(!vec2<bool>(!global0.x & true, any(vec3<bool>(global0.x, global0.x, false)) & any(vec4<bool>(false, true, true, true))));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = ~(~(~min(_wgslsmith_mod_u32(114208u, u_input.d.x), _wgslsmith_div_u32(u_input.a.x, u_input.d.x))));
    let var_1 = 0u;
    global3 = array<vec3<u32>, 8>();
    var var_2 = u_input.e.x;
    global3 = array<vec3<u32>, 8>();
    return !select(select(!func_2(2147483647i, arg_0), !vec2<bool>(global0.x, global0.x), global0.x), select(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), func_2(41642i, Struct_1(arg_0.a, 15659i))), all(vec2<bool>(global0.x, global0.x))), vec2<bool>(any(vec4<bool>(global0.x, global0.x, true, true)), any(vec2<bool>(true, true))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    global0 = select(select(!arg_1, arg_1, func_1(Struct_1(global2.a, _wgslsmith_dot_vec3_i32(u_input.b.yxx, u_input.b.yzy))).x), arg_1, -852f == _wgslsmith_f_op_f32(trunc(arg_0)));
    let var_0 = Struct_1(1f, global2.b);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 581f)))), -2147483647i);
    let var_2 = Struct_1(global2.a, (min(0i, 1i) << (1u % 32u)) >> (0u % 32u));
    let var_3 = arg_1.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -184f), select(select(select(vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, false), !vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x), select(func_1(Struct_1(865f, u_input.c)), vec2<bool>(true, true), global0.x || false)), select(func_2(max(1i, -2147483647i), Struct_1(global2.a, -1i)), vec2<bool>(global0.x, true), func_2(u_input.c, Struct_1(global2.a, u_input.c))), !((global2.b ^ 2147483647i) > firstLeadingBit(1i))));
    var_0 = func_4(1240f, !func_1(func_4(_wgslsmith_div_f32(287f, global2.a), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), vec2<bool>(global0.x, global0.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1790f), -1384f))));
    global0 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 11110i));
    let var_2 = _wgslsmith_div_u32(abs(firstTrailingBit(u_input.d.x)), firstTrailingBit(u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, -(~u_input.b.xy << (vec2<u32>(4294967295u, var_2) % vec2<u32>(32u))) << ((u_input.e | vec2<u32>(u_input.e.x, var_2 ^ u_input.a.x)) % vec2<u32>(32u)), ~abs(vec3<i32>(_wgslsmith_sub_i32(u_input.c, global2.b), var_0.b, ~(-12528i))));
}

