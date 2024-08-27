struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(58397i, 0i), Struct_1(false, vec4<u32>(7747u, 73516u, 4294967295u, 57033u), vec2<bool>(false, true), vec4<u32>(68062u, 0u, 10801u, 30638u)));

var<private> global1: array<i32, 12>;

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(arg_3.b.b.x, 12u)];
    var var_1 = vec3<bool>(true, any(!select(vec3<bool>(false, false, global0.b.a), vec3<bool>(true, true, global0.b.a), false)), true);
    var_1 = select(!select(vec3<bool>(all(vec4<bool>(arg_3.b.c.x, arg_3.b.c.x, global0.b.c.x, false)), false, select(global0.b.a, true, global0.b.c.x)), vec3<bool>(var_1.x && var_1.x, true, true || global0.b.c.x), !vec3<bool>(arg_3.b.c.x, true, true)), !(!(!(!vec3<bool>(true, arg_3.b.a, global0.b.a)))), true && all(arg_3.b.c));
    global1 = array<i32, 12>();
    global2 = any(select(vec3<bool>(!arg_3.b.a, true, arg_3.b.c.x), select(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, arg_3.b.a, var_1.x), select(vec3<bool>(arg_3.b.a, true, global0.b.a), vec3<bool>(var_1.x, arg_3.b.c.x, arg_3.b.a), true)), vec3<bool>(select(global0.b.a, global0.b.c.x, true), var_1.x, global0.b.a), var_1.x), vec3<bool>(arg_3.b.c.x, true, true)));
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> bool {
    var var_0 = -424f;
    let var_1 = u_input.b.x;
    let var_2 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(var_1, 18899i), global0.a), Struct_1(func_3(arg_0.x, 1f, 1u, Struct_2(u_input.b.xy | u_input.b.xy, Struct_1(true, vec4<u32>(u_input.a.x, 110360u, 20914u, u_input.a.x), arg_1.xz, global0.b.d))), _wgslsmith_mult_vec4_u32(select(global0.b.d, vec4<u32>(global0.b.b.x, global0.b.d.x, global0.b.d.x, global0.b.d.x), arg_1), vec4<u32>(4678u, 4294967295u, global0.b.b.x, 110116u)) & ~_wgslsmith_sub_vec4_u32(global0.b.b, vec4<u32>(0u, global0.b.b.x, 4294967295u, u_input.a.x)), select(vec2<bool>(global0.b.a, u_input.a.x >= global0.b.d.x), select(select(global0.b.c, arg_1.wy, global0.b.c), !global0.b.c, vec2<bool>(true, arg_1.x)), select(!global0.b.c, global0.b.c, vec2<bool>(arg_1.x, true))), (_wgslsmith_add_vec4_u32(global0.b.b, vec4<u32>(1u, u_input.a.x, 75854u, global0.b.b.x)) & vec4<u32>(43427u, u_input.a.x, u_input.a.x, 51985u)) & _wgslsmith_mod_vec4_u32(global0.b.d, countOneBits(global0.b.d))));
    var var_3 = 1553f;
    let var_4 = _wgslsmith_mod_i32(min(0i, select(u_input.b.x, _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(u_input.a.x, 12u)], var_2.a.x >> (4294967295u % 32u)), !(-1231f <= arg_0.x))), -2147483647i);
    return true;
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_1(all(!select(select(vec3<bool>(global0.b.a, true, global0.b.c.x), vec3<bool>(global0.b.a, false, true), true), !vec3<bool>(false, global0.b.c.x, true), select(vec3<bool>(global0.b.c.x, true, false), vec3<bool>(global0.b.a, false, false), true))), global0.b.b, global0.b.c, global0.b.d);
    var var_1 = global1[_wgslsmith_index_u32(28784u, 12u)];
    let var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-783f)) - _wgslsmith_f_op_f32(-128f + 1042f))), 778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-294f + -122f) - -978f)), !(!vec4<bool>(var_0.c.x, false, !var_0.c.x, true)));
    let var_3 = Struct_1(_wgslsmith_add_u32(var_0.b.x, u_input.a.x) >= countOneBits(global0.b.d.x), reverseBits(~global0.b.b), !global0.b.c, global0.b.d);
    global1 = array<i32, 12>();
    return firstLeadingBit(-(vec3<i32>(34059i, global0.a.x, global0.a.x) << (global0.b.d.zxx % vec3<u32>(32u))) << (~var_3.b.xyx % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_1() & (_wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(-2147483647i, 2075i, -14048i) << (vec3<u32>(global0.b.d.x, global0.b.d.x, global0.b.b.x) % vec3<u32>(32u))) << (select(vec3<u32>(global0.b.b.x, 22398u, 1u), vec3<u32>(global0.b.d.x, 25166u, 18932u), global0.b.c.x || false) % vec3<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(536f, -491f, 388f) + vec3<f32>(1163f, 1426f, -548f))))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(-1942f)), _wgslsmith_f_op_f32(871f + 101f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, -480f) + vec2<f32>(1543f, 1000f)))))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(193f, _wgslsmith_f_op_f32(286f + -144f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-201f, -1069f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(341f, 1866f) * vec2<f32>(-1484f, 1913f))))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-661f, 1085f, global0.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(max(-534f, 509f))), -1232f))));
}

