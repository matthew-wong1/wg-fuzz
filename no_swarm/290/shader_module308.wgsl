struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(36116i, -16087i, -30034i, -48376i), vec4<i32>(0i, 7644i, 2147483647i, -42176i), vec4<i32>(16575i, 242i, 66154i, 16093i), vec4<i32>(-51160i, 1i, 19678i, 0i), vec4<i32>(18683i, 2147483647i, -1i, 1i), vec4<i32>(0i, 1i, -29585i, 0i), vec4<i32>(2147483647i, 2147483647i, -83213i, i32(-2147483648)), vec4<i32>(21395i, -1i, -48091i, -1i), vec4<i32>(55813i, 0i, 0i, 12616i), vec4<i32>(2147483647i, 1i, 0i, 9089i), vec4<i32>(-1i, -1i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -10457i, 0i, 1i), vec4<i32>(-23668i, 1i, 2147483647i, -17797i), vec4<i32>(i32(-2147483648), 85292i, 0i, i32(-2147483648)), vec4<i32>(1i, -1i, 1i, -1i), vec4<i32>(42376i, 48454i, -1i, -43669i), vec4<i32>(97i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(40111i, -9583i, 39440i, 52049i), vec4<i32>(9816i, 1i, i32(-2147483648), 1i), vec4<i32>(0i, -134053i, 14536i, -1i), vec4<i32>(2147483647i, 5107i, 1i, 1i), vec4<i32>(-12809i, 1i, 58428i, 1i), vec4<i32>(4074i, -31073i, -76158i, 24072i), vec4<i32>(-37203i, 31160i, 0i, 1i), vec4<i32>(23520i, -7534i, -1i, 1i), vec4<i32>(-18088i, 1i, 1i, i32(-2147483648)));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    let var_1 = 863f;
    global1 = array<vec4<i32>, 26>();
    var var_2 = !select(!global2.d.xx, vec2<bool>(global2.d.x & true, select(true, all(arg_0.d.xx), arg_0.c)), false & arg_0.c);
    global1 = array<vec4<i32>, 26>();
    return global0[_wgslsmith_index_u32(u_input.a, 15u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = global0[_wgslsmith_index_u32(arg_1.a.x, 15u)];
    var var_1 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 25775u >> (arg_1.a.x % 32u)), 15u)]);
    var var_2 = 35848u;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-450f, var_1.b.x)))), arg_1.b.zy));
    var_3 = var_1.b.wy;
    return vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~9192i, max(1983i, u_input.d.x)), _wgslsmith_clamp_i32(u_input.d.x, -65710i, u_input.c.x) ^ 10774i, u_input.e.x, abs(firstTrailingBit(u_input.d.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, -13307i, u_input.c.x, u_input.e.x), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(var_1.a.x, 26u)], vec4<i32>(18082i, 18874i, 10949i, -147i))), global1[_wgslsmith_index_u32(96058u, 26u)])), -32812i);
}

fn func_3(arg_0: i32, arg_1: bool) -> vec4<bool> {
    let var_0 = func_2(func_2(func_2(func_2(func_2(Struct_1(global2.a, vec4<f32>(global2.b.x, 210f, -295f, -164f), false, global2.d))))));
    let var_1 = true;
    let var_2 = vec3<i32>(u_input.e.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, arg_0, -8627i, arg_0)), vec4<i32>(-2147483647i, u_input.d.x, arg_0, -arg_0)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, arg_0, 0i, arg_0)), vec4<i32>(-1i) * -global1[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_sub_i32(55974i, firstTrailingBit(arg_0)));
    var var_3 = all(vec2<bool>(-1i == _wgslsmith_clamp_i32(39561i, -1i, ~var_2.x), var_0.c));
    var var_4 = var_0;
    return !vec4<bool>(true, global2.c, any(select(select(vec4<bool>(var_1, arg_1, true, var_4.d.x), vec4<bool>(true, true, var_1, arg_1), var_4.d.x), select(vec4<bool>(var_1, arg_1, false, var_1), vec4<bool>(true, false, false, false), vec4<bool>(var_4.c, true, var_1, global2.c)), any(var_0.d))), var_0.c & false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(218u, ~_wgslsmith_div_u32(reverseBits(u_input.a), ~global2.a.x), ~_wgslsmith_sub_u32(_wgslsmith_add_u32(global2.a.x, u_input.a), u_input.a)), vec3<u32>(1u, firstTrailingBit(~1u), ~((u_input.b.x | 12564u) & ~19068u)));
    let var_1 = false;
    var var_2 = ~global2.a.x;
    var var_3 = !func_3(_wgslsmith_dot_vec2_i32(func_1(vec2<bool>(var_1, true), Struct_1(global2.a, vec4<f32>(global2.b.x, -572f, global2.b.x, global2.b.x), false, global2.d)), vec2<i32>(~u_input.e.x, u_input.e.x)), var_1);
    let var_4 = var_3.yw;
    var_2 = _wgslsmith_div_u32(~(~max(var_0, 0u)), ~_wgslsmith_dot_vec3_u32(countOneBits(u_input.b), vec3<u32>(u_input.b.x, var_0, 9912u))) | 63931u;
    var_2 = var_0;
    global2 = global0[_wgslsmith_index_u32(global2.a.x, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(-29376i);
}

