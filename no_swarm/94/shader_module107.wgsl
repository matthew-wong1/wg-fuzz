struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec4<i32>(0i, 1i, -1i, -13043i), vec2<i32>(i32(-2147483648), -30489i), vec3<f32>(217f, -978f, 716f));

var<private> global1: array<u32, 9>;

var<private> global2: array<u32, 27> = array<u32, 27>(1u, 0u, 4294967295u, 4294967295u, 4294967295u, 66189u, 36134u, 1u, 1u, 1u, 0u, 1u, 32168u, 66469u, 104562u, 16349u, 23901u, 4294967295u, 99080u, 127446u, 4294967295u, 7351u, 4294967295u, 19281u, 4294967295u, 1u, 1u);

var<private> global3: bool = true;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> i32 {
    global2 = array<u32, 27>();
    var var_0 = Struct_1(~firstTrailingBit(~global0.a) ^ 4294967295u, reverseBits(vec4<i32>(firstTrailingBit(u_input.d.x), (2147483647i ^ global0.b.x) >> (global0.a % 32u), ~(~(-1i)), global0.c.x << (~global2[_wgslsmith_index_u32(83482u, 27u)] % 32u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, 1i), _wgslsmith_mult_vec2_i32(u_input.d.zx, vec2<i32>(u_input.d.x, u_input.d.x) | min(vec2<i32>(-2147483647i, 67496i), vec2<i32>(u_input.d.x, -8723i))), select(~global0.b.xw | max(u_input.d.xx, u_input.d.zw), abs(_wgslsmith_mult_vec2_i32(global0.c, global0.c)), true)), vec3<f32>(_wgslsmith_f_op_f32(global0.d.x + arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1708f))))), 1040f));
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(min(74057u, ~0u ^ global0.a)), 9u)] >= _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, _wgslsmith_add_u32(31939u, ~39353u), ~global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 9u)], 27u)]), abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53760u, 27u)], 27u)], 4294967295u, 27664u)) >> (vec3<u32>(~70421u, reverseBits(17972u), 4294967295u) % vec3<u32>(32u)));
    var var_2 = u_input.d.zy;
    var var_3 = Struct_1(_wgslsmith_mult_u32(global0.a, firstLeadingBit(36895u)), u_input.d, global0.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(3325f, 709f, -957f) + global0.d)) - _wgslsmith_f_op_vec3_f32(global0.d * var_0.d)))));
    return 1i;
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1((global0.a << (global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(78872u, 27u)] >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4593u, 27u)], 27u)] % 32u), global0.a), 9u)], 27u)] % 32u)) >> (u_input.e.x % 32u), vec4<i32>(_wgslsmith_div_i32(~(-2147483647i), -2147483647i), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -30614i, 1i), u_input.d.wwz), firstTrailingBit(u_input.d.x), 10231i != u_input.d.x) & (i32(-1i) * -1i), abs(~func_3(global0.d.x)), global0.b.x), abs(vec2<i32>(~countOneBits(u_input.d.x), ~(-1i))), _wgslsmith_div_vec3_f32(global0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-897f, _wgslsmith_f_op_f32(arg_0.x * global0.d.x), global0.d.x))));
    global0 = var_0;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))) * -484f) + arg_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-172f - arg_0.x)))));
    let var_3 = vec2<i32>(abs(-(~4729i)), -41915i ^ -(~var_0.b.x));
    return _wgslsmith_add_u32(global0.a, _wgslsmith_mult_u32(~select(~var_0.a, 1u, true), ~(~0u ^ _wgslsmith_mod_u32(1u, var_1.a))));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    global1 = array<u32, 9>();
    let var_0 = global0.d.x;
    let var_1 = ~(u_input.e >> (_wgslsmith_add_vec3_u32(firstLeadingBit(u_input.e), u_input.e) % vec3<u32>(32u)));
    let var_2 = 1000f;
    let var_3 = ~vec3<u32>(min(~(global1[_wgslsmith_index_u32(70246u, 9u)] ^ 27898u), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, -1361f, -494f, global0.d.x)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x | global0.a, min(u_input.a, var_1.x)), 27u)] << (0u % 32u), ~1u ^ (u_input.c & (u_input.a << (76713u % 32u))));
    return min(firstTrailingBit(_wgslsmith_dot_vec3_i32(abs(firstLeadingBit(arg_1.wyw)), select(vec3<i32>(-23643i, 11431i, -1i), -arg_1.wyz, arg_2))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 9>();
    let var_0 = false;
    global4 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1835f, 1000f)), _wgslsmith_f_op_f32(-global0.d.x))))), vec4<i32>(_wgslsmith_sub_i32(1i, -u_input.d.x), u_input.d.x, -45971i, u_input.d.x >> (_wgslsmith_dot_vec3_u32(u_input.e, u_input.e) % 32u)) & _wgslsmith_mult_vec4_i32(global0.b, -vec4<i32>(global0.b.x, 0i, 0i, 1i)), var_0);
    global2 = array<u32, 27>();
    var var_1 = false;
    global3 = var_0;
    global4 = ~func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-877f, _wgslsmith_f_op_f32(sign(global0.d.x)), var_0))), vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, ~(-32922i)), ~abs(2147483647i), abs(global0.c.x), -_wgslsmith_sub_i32(u_input.d.x, 1i)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u & func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-520f, -211f, 531f, global0.d.x))))), ~countOneBits(u_input.d.x | u_input.d.x));
}

