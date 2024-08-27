struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(4294967295u, 33428u, 40217u, 1u, 1u, 29294u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global0 = array<u32, 6>();
    let var_0 = 782f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-977f, -1053f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, -277f))))));
    let var_1 = arg_1;
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> f32 {
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_0 = (-16547i != max(-44295i, firstTrailingBit(-1i))) == true;
    global0 = array<u32, 6>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1727f - -829f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1085f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x)))))), arg_1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_1.a.x)), _wgslsmith_f_op_f32(func_3(34357u, vec4<f32>(2857f, 612f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f - 1136f)), -873f), arg_3.b.yz)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 1144f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -120f)))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, ~arg_1.d << (1u % 32u)), min(countOneBits(~_wgslsmith_mod_i32(-2147483647i, arg_2.x)), 2147483647i), 34777i);
    let var_2 = countOneBits(-(~arg_2));
    let var_3 = -6837i;
    var_1 = -(~arg_2.x);
    return _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.c.x, arg_3.b.x, 0u), min(~min(vec3<u32>(arg_1.c.x, global0[_wgslsmith_index_u32(0u, 6u)], 0u), u_input.c ^ vec3<u32>(global0[_wgslsmith_index_u32(0u, 6u)], u_input.c.x, 73740u)), ~_wgslsmith_clamp_vec3_u32(~u_input.c, ~arg_1.c, vec3<u32>(1u, 4294967295u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(337f)), _wgslsmith_f_op_f32(-205f * -683f), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-470f + -1253f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(886f, -683f, true)))), _wgslsmith_f_op_f32(111f + _wgslsmith_f_op_f32(func_1(42461u, Struct_1(vec4<f32>(1050f, 1245f, 418f, -1200f), vec4<u32>(58789u, 29389u, 15612u, 4294967295u), vec3<u32>(1u, 4294967295u, 85356u), u_input.a), vec4<i32>(u_input.a, u_input.a, 57509i, 0i))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 552f, -1246f, 946f) * vec4<f32>(-649f, 611f, 608f, 960f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1433f, 836f, -217f, -939f)) - vec4<f32>(709f, -1713f, 843f, -115f)))), ~(vec4<u32>(1u, 35192u, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1732u, 6u)], 6u)], 6u)]) << (~vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(2681u, 6u)], global0[_wgslsmith_index_u32(13558u, 6u)], 10596u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(~4294967295u, 6u)], ~4294967295u, _wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 6u)]), u_input.c.x), vec4<u32>(~u_input.b.x, global0[_wgslsmith_index_u32(~u_input.b.x, 6u)], ~global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 0u), vec4<u32>(45297u, global0[_wgslsmith_index_u32(1u, 6u)], ~u_input.b.x, _wgslsmith_mod_u32(15884u, u_input.b.x))), vec3<u32>(2009u, u_input.c.x, ~(7614u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 6u)])) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(~4294967295u, 6u)], u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_add_u32(115374u, global0[_wgslsmith_index_u32(53413u, 6u)])), abs(func_2(vec3<f32>(181f, -430f, 994f), Struct_1(vec4<f32>(-579f, 1000f, -1474f, 808f), vec4<u32>(u_input.b.x, 0u, 20979u, u_input.b.x), u_input.c, 2147483647i), vec4<i32>(u_input.a, 31140i, u_input.a, u_input.a), Struct_1(vec4<f32>(-1197f, -188f, 132f, 916f), vec4<u32>(32380u, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(45038u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]), vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 6u)], u_input.b.x), 75761i)))) % vec3<u32>(32u)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~(-35353i), 1i) >> (firstLeadingBit(~u_input.b.x & ~u_input.c.x) % 32u), u_input.c.zx, -1357f, reverseBits(-u_input.a));
}

