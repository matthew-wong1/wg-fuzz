struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-1141f, -1000f, 256f, 127f);

var<private> global1: vec4<u32> = vec4<u32>(28008u, 27270u, 35352u, 51959u);

var<private> global2: Struct_5 = Struct_5(vec2<f32>(-316f, 979f), vec3<i32>(2147483647i, 21686i, 1i));

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(global2.a.x);
    var var_1 = false;
    var_1 = true;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(1u), 4u)]), _wgslsmith_f_op_f32(f32(-1f) * -161f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-797f)))) - 1000f));
    var var_3 = vec2<i32>(-(2147483647i & (-55840i ^ select(-19503i, 54762i, global3.x))), ~_wgslsmith_div_i32(-(i32(-1i) * -1i), -global2.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.d.x, 4u)]));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = Struct_5(vec2<f32>(1140f, arg_1), _wgslsmith_clamp_vec3_i32(firstTrailingBit(global2.b) << (countOneBits(_wgslsmith_mod_vec3_u32(u_input.d.xxw, vec3<u32>(u_input.a.x, global1.x, 4294967295u))) % vec3<u32>(32u)), u_input.c.xxx, -vec3<i32>(-u_input.c.x, global2.b.x, -u_input.c.x)));
    global0 = array<f32, 4>();
    global1 = ~(~(~(u_input.d << (vec4<u32>(global1.x, u_input.d.x, global1.x, 1u) % vec4<u32>(32u)))) & (min(reverseBits(vec4<u32>(8057u, 30151u, u_input.b, 51203u)), u_input.d) >> (select(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 27328u) & u_input.d, vec4<u32>(0u, global1.x, 4294967295u, 4294967295u), select(vec4<bool>(arg_2.x, arg_2.x, true, global3.x), vec4<bool>(false, true, global3.x, true), vec4<bool>(false, arg_2.x, arg_2.x, false))) % vec4<u32>(32u))));
    global1 = min(vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_div_u32(u_input.b, abs(global1.x))), ~8284u ^ u_input.b, ~0u), ~reverseBits(u_input.d));
    return 1777f;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.c;
    let var_1 = Struct_4(var_0.a);
    let var_2 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 188f)), vec2<bool>(u_input.a.x <= 4294967295u, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(var_1.a)), !vec2<bool>(arg_0.e, global3.x))), _wgslsmith_f_op_f32(floor(932f))))), arg_0.b);
    var var_3 = select(true, true, all(vec3<bool>(_wgslsmith_f_op_f32(-var_2.a.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1941f), global3.x, any(select(global3.wxw, vec3<bool>(true, true, arg_0.e), false)))));
    return abs(~u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f - -1000f) * _wgslsmith_div_f32(_wgslsmith_div_f32(724f, global0[_wgslsmith_index_u32(u_input.d.x, 4u)]), _wgslsmith_f_op_f32(-595f + global0[_wgslsmith_index_u32(23372u, 4u)])))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 4u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1238f * global0[_wgslsmith_index_u32(6762u, 4u)])))));
    var var_1 = global2.b.x;
    global4 = ~_wgslsmith_div_i32(~0i, ~(~_wgslsmith_mod_i32(u_input.c.x, global2.b.x)));
    var var_2 = func_1(Struct_2(global1.xxy, abs(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, global2.b.x))), Struct_1(var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global2.a.x) - global2.a) + global2.a), any(!vec4<bool>(global3.x, true, true, global3.x)))) >> (85081u % 32u);
    let var_3 = _wgslsmith_f_op_f32(1696f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)));
    var var_4 = select(vec2<bool>(true, true), vec2<bool>(all(select(!vec2<bool>(global3.x, global3.x), select(global3.zy, global3.xy, false), global3.x)), false), select(!select(global3.xx, vec2<bool>(false, false), global3.x), global3.xw, false));
    let x = u_input.a;
    s_output = StorageBuffer(-37478i, vec4<i32>(-global2.b.x, _wgslsmith_mult_i32(abs(0i), global2.b.x), _wgslsmith_div_i32(abs(-28867i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 26539i), vec2<i32>(u_input.c.x, 46891i))) ^ _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - 1204f), -156f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(47224u, 4u)], 1351f, var_0.x), vec3<f32>(var_3, -489f, 105f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, var_3, global2.a.x))))), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(-2147483647i), select(1i, _wgslsmith_clamp_i32(global2.b.x, -1i, global2.b.x), 0u <= global1.x), 1i, ~(~global2.b.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 145i, global2.b.x, global2.b.x), select(u_input.c, u_input.c, vec4<bool>(false, false, global3.x, true))), firstLeadingBit(global2.b.x), u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, select(2147483647i, global2.b.x, true)))), -135f);
}

