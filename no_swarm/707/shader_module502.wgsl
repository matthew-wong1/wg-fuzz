struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

var<private> global2: u32;

var<private> global3: vec4<f32> = vec4<f32>(1664f, -1961f, 2648f, 1246f);

var<private> global4: array<i32, 10> = array<i32, 10>(34735i, 1i, 1i, -6759i, -13801i, 37162i, -2575i, i32(-2147483648), 0i, -1i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = global0.a;
    let var_1 = global0.a;
    var var_2 = 3033i;
    var_2 = var_0.a.x;
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(~(vec3<u32>(u_input.c, 4294967295u, 37476u) & vec3<u32>(4294967295u, 6372u, 134161u))), vec3<u32>(1u, ~u_input.a ^ global1.x, _wgslsmith_div_u32(~60886u, ~0u))), _wgslsmith_mult_vec3_u32(~(~(vec3<u32>(1u, u_input.a, 57838u) & vec3<u32>(38704u, global1.x, 39284u))), abs(vec3<u32>(global1.x, countOneBits(global1.x), _wgslsmith_sub_u32(global1.x, global1.x)))));
    return Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global3.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.b, vec2<f32>(global0.b.x, 120f))) + _wgslsmith_f_op_vec2_f32(global3.yz * global3.yx))))), Struct_1(vec2<i32>(-16569i >> (global1.x % 32u), _wgslsmith_sub_i32(var_1.a.x & global4[_wgslsmith_index_u32(4294967295u, 10u)], firstLeadingBit(-5571i)))), global0.c, arg_0);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    global1 = abs(vec3<u32>(1u, ~u_input.c, 0u));
    global2 = firstLeadingBit(37058u);
    global2 = global1.x & ~global1.x;
    global1 = vec3<u32>(~global1.x, 4294967295u, firstTrailingBit(global1.x));
    let var_0 = func_2(true, _wgslsmith_f_op_f32(-global3.x)).a;
    return arg_0.x;
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(global0.a.a, _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.b)), arg_0.xx)) | _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_0.x, -2147483647i, arg_0.x), _wgslsmith_mult_i32(-51971i, -3446i)), _wgslsmith_mult_vec2_i32(global0.d.a, arg_0.xw & global0.c.a)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2041f), global3.x, global0.e))))));
}

fn func_1() -> Struct_2 {
    global2 = ~1u;
    var var_0 = -52610i;
    var var_1 = func_2(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), -1638f, 50452u <= (global1.x | max(8334u, 36211u)))));
    var var_2 = func_2(true, _wgslsmith_f_op_f32(func_4(vec4<i32>(1i, global0.c.a.x & global0.a.a.x, -func_3(vec4<i32>(33192i, u_input.b, -2147483647i, -11638i)), reverseBits(countOneBits(global4[_wgslsmith_index_u32(3085u, 10u)]))))));
    let var_3 = vec2<bool>(true, true);
    return func_2(func_2(global0.e, -1511f).e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f) + 1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = global1.xz;
    var var_2 = ~var_1.x;
    let var_3 = func_2(all(vec3<bool>(false, true, var_0.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - func_1().b.x) + _wgslsmith_f_op_f32(1158f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1344f, global0.b.x)), -925f))))).e;
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_3(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i), -vec4<i32>(global0.c.a.x, global0.c.a.x, -2147483647i, var_0.a.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b - var_0.b)));
}

