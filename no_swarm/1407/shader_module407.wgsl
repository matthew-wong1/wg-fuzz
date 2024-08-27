struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, -28740i);

var<private> global1: Struct_2;

var<private> global2: array<u32, 9>;

var<private> global3: array<Struct_3, 27>;

var<private> global4: vec3<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global4 = global1.c;
    var var_0 = select(!select(vec3<bool>(!global1.c.x, all(vec2<bool>(true, global4.x)), true), vec3<bool>(34522u > u_input.a.x, global1.c.x, false), all(select(global1.c.yy, global1.c.zz, vec2<bool>(true, global4.x)))), !global1.c, select(vec3<bool>(all(vec4<bool>(true, global4.x, global1.c.x, false)), true, !global4.x && any(global4.yz)), vec3<bool>(false, select(global1.d.x > 1253f, global1.c.x && false, true), select(all(global1.c), !global4.x, false && global1.c.x)), !any(select(vec4<bool>(global1.c.x, global4.x, true, true), vec4<bool>(true, true, false, false), vec4<bool>(global4.x, global1.c.x, global4.x, true)))));
    global2 = array<u32, 9>();
    var var_1 = false;
    let var_2 = Struct_1(reverseBits(vec3<i32>(global1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(102991i, 0i, 0i, global0.x), vec4<i32>(2754i, global0.x, 2147483647i, -3084i)), 1i)), vec3<u32>(firstLeadingBit(global2[_wgslsmith_index_u32(countOneBits(select(global2[_wgslsmith_index_u32(29624u, 9u)], global1.b.b.x, true)), 9u)]), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(61376u, u_input.a.x, 1u, 52809u), vec4<u32>(4294967295u, 0u, u_input.a.x, global1.b.b.x)), ~vec4<u32>(global1.b.b.x, 4294967295u, 25647u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22018u, 9u)], 9u)]) >> (_wgslsmith_add_vec4_u32(vec4<u32>(16469u, 1u, 0u, global1.b.b.x), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.a.x, 1u, 0u)) % vec4<u32>(32u))), global1.b.b.x));
    return var_2.a.x;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = ~func_3();
    let var_1 = vec2<bool>(global4.x, select(!(_wgslsmith_add_i32(1i, global1.b.a.x) != max(arg_0, 14973i)), false, global4.x));
    let var_2 = true;
    global3 = array<Struct_3, 27>();
    var var_3 = -35236i;
    return global0.x ^ 1530i;
}

fn func_4(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = select(global1.c, select(vec3<bool>(true, 1f >= _wgslsmith_f_op_f32(global1.d.x + arg_1), !(true != global1.c.x)), select(!(!vec3<bool>(global4.x, global4.x, global1.c.x)), global1.c, true), global1.c), global4.x);
    global0 = global1.b.a.xy;
    var_0 = global1.c;
    let var_1 = Struct_4(global3[_wgslsmith_index_u32(1u, 27u)], 1i, 4294967295u);
    var var_2 = arg_0 ^ 2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f));
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_i32(_wgslsmith_div_i32(global0.x, 2147483647i), max(func_2(~0i), (global0.x | global1.b.a.x) & global0.x)), global1.d.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.d)));
    let var_2 = global3[_wgslsmith_index_u32((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(22724u, 1u)), 9u)] << (~_wgslsmith_dot_vec4_u32(vec4<u32>(53773u, 18400u, global2[_wgslsmith_index_u32(global1.b.b.x, 9u)], 318u), vec4<u32>(0u, global2[_wgslsmith_index_u32(global1.b.b.x, 9u)], u_input.a.x, 1u)) % 32u), 9u)] ^ abs(reverseBits(global2[_wgslsmith_index_u32(global1.b.b.x, 9u)] << (global1.b.b.x % 32u)))) & ~(~(~firstLeadingBit(114073u))), 27u)];
    global4 = !select(global1.c, select(select(select(global1.c, global1.c, global1.c), global1.c, global1.c.x), vec3<bool>(true, true, !global1.c.x), all(select(global1.c, vec3<bool>(global1.c.x, global1.c.x, global1.c.x), true))), select(global1.c, !(!global1.c), global1.c));
    global3 = array<Struct_3, 27>();
    return firstTrailingBit(~u_input.a & vec3<u32>(~23053u, abs(var_2.d.b.x), _wgslsmith_clamp_u32(14496u, ~1u, _wgslsmith_add_u32(0u, var_2.d.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec3<bool>(all(!select(select(vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), vec4<bool>(global1.c.x, global4.x, false, true), vec4<bool>(false, global4.x, global4.x, global1.c.x)), vec4<bool>(global1.c.x, true, global1.c.x, global4.x), false)), true, true);
    var var_0 = _wgslsmith_mult_u32(~((global1.b.b.x & 13026u) << (global1.b.b.x % 32u)), _wgslsmith_div_u32(~(~46955u), global1.b.b.x)) ^ firstTrailingBit(4294967295u);
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-858f - -991f), global1.d.x))));
    var_1 = abs(reverseBits(vec3<u32>(5001u, 917u, _wgslsmith_mult_u32(31214u, var_1.x)) | ~global1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(1i, global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(665f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1860f, var_2.x)), -1672i, global1.b.a.x);
}

