struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), -601f, 601f), vec4<u32>(4294967295u, 4294967295u, 1u, 83229u), vec2<i32>(0i, -10065i), vec4<i32>(-55959i, i32(-2147483648), 17067i, 10762i));

var<private> global2: array<u32, 18>;

var<private> global3: u32;

var<private> global4: array<vec3<u32>, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = vec2<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(global1.d.x << (global1.b.x % 32u)), u_input.a.x), _wgslsmith_dot_vec4_i32(abs(-global1.d), -global1.d)));
    global4 = array<vec3<u32>, 5>();
    global2 = array<u32, 18>();
    let var_1 = _wgslsmith_add_vec3_u32(global1.b.wzy, global1.b.wwz) | vec3<u32>(global2[_wgslsmith_index_u32(~max(109844u, global0[_wgslsmith_index_u32(global1.b.x, 22u)] ^ 89897u), 18u)], 1u, reverseBits(global1.b.x));
    var var_2 = select(!vec3<bool>(true, 1i < arg_0, select(select(true, false, false), true, any(vec2<bool>(false, false)))), !(!vec3<bool>(1i > var_0.x, true, true)), all(vec3<bool>(any(vec3<bool>(false, true, true)), true, var_0.x >= arg_0)) || true);
    return 10220i;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec3<f32> {
    global2 = array<u32, 18>();
    let var_0 = global1.b.yw;
    global0 = array<u32, 22>();
    global2 = array<u32, 18>();
    var var_1 = arg_0;
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(292f, 836f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.a.c)))), _wgslsmith_f_op_f32(f32(-1f) * -931f)))));
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_3 {
    global0 = array<u32, 22>();
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(_wgslsmith_f_op_f32(ceil(global1.a.b)) >= -629f, false, vec3<i32>(func_3(-31481i), firstLeadingBit(func_3(-12327i)), abs(~u_input.a.x)), _wgslsmith_f_op_f32(-2830f + _wgslsmith_f_op_f32(step(global1.a.b, _wgslsmith_f_op_f32(trunc(1617f)))))), false));
    var var_1 = !select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), 19460i >= _wgslsmith_add_i32(-1i >> (0u % 32u), u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.c + global1.a.b))), -1234f)));
    var var_3 = select(!vec2<bool>(true, global1.d.x >= u_input.a.x), select(select(select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), var_1.x), !vec2<bool>(false, var_1.x), var_1.x), !vec2<bool>(var_1.x, false), true), select(vec2<bool>(var_1.x, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), !select(vec2<bool>(true, true), !vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x))), var_1.x);
    return Struct_3(var_3.x != !var_3.x, true, min(_wgslsmith_add_vec3_i32(select(vec3<i32>(global1.d.x, u_input.a.x, u_input.a.x), arg_1.yyy, false), arg_1.yxx), arg_1.yxy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 * 304f))), _wgslsmith_f_op_f32(f32(-1f) * -866f)));
}

fn func_1() -> vec2<f32> {
    let var_0 = ~(~select(global4[_wgslsmith_index_u32(~(19072u | global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30923u, 18u)], 22u)]), 5u)], ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40803u, 18u)], 22u)], global2[_wgslsmith_index_u32(global1.b.x, 18u)], 1u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 22u)], global1.b.x, global1.b.x)), true));
    let var_1 = global1.a;
    global3 = 53709u;
    let var_2 = Struct_1(vec2<i32>(-37930i, ~(var_1.a.x << (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 22u)] % 32u))), _wgslsmith_f_op_f32(-1000f - -184f), var_1.b);
    var var_3 = func_2(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(48029u >> (0u % 32u)), global2[_wgslsmith_index_u32(1u, 18u)]), 22u)]), -(~vec4<i32>(var_2.a.x, 34876i, 11570i, 5774i)) & countOneBits(vec4<i32>(2147483647i, u_input.a.x, var_1.a.x, var_1.a.x << (4294967295u % 32u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-765f, -1448f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, 1598f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c, global1.a.c), vec2<f32>(-480f, var_2.c), vec2<bool>(true, var_3.a))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-131f, 513f), vec2<f32>(-1333f, global1.a.b)))))));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_3(true, !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(global1.a.c)))) >= arg_0.x), ~(global1.d.xxx >> (~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 22u)], 28010u, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-global1.a.b));
    let var_1 = Struct_2(global1.a, global1.b ^ countOneBits(~(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 22u)], 0u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 18u)], 22u)], 113794u))), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(-global1.d.yz, vec2<i32>(var_0.c.x, 2147483647i)), _wgslsmith_sub_vec4_i32(-(~global1.d ^ reverseBits(vec4<i32>(global1.a.a.x, global1.c.x, 1i, global1.d.x))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, -2322i, global1.d.x), max(-48157i, 41640i), max(2147483647i, -2147483647i)), ~(~vec4<i32>(-34705i, u_input.a.x, -23571i, u_input.a.x)))));
    global3 = 1u;
    let var_2 = func_2(abs(4294967295u), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_1.c.x, var_1.c.x, u_input.a.x, 31563i), vec4<i32>(u_input.a.x, 47929i, var_1.c.x, var_0.c.x) >> (vec4<u32>(var_1.b.x, global2[_wgslsmith_index_u32(0u, 18u)], 28681u, 78897u) % vec4<u32>(32u)), vec4<bool>(var_0.b, var_0.a, true, true)), _wgslsmith_div_vec4_i32(abs(var_1.d), vec4<i32>(-2147483647i, -10199i, -1i, u_input.a.x))), (_wgslsmith_mult_vec4_i32(global1.d, vec4<i32>(-8930i, -24881i, global1.c.x, var_1.d.x)) >> (vec4<u32>(40778u, 65594u, 0u, 1u) % vec4<u32>(32u))) ^ -(~var_1.d)));
    var var_3 = reverseBits(~1u);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global1.b.wyy, _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(20011u, 22u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 18u)], 22u)], 4294967295u), vec3<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_div_u32(~4294967295u, ~global1.b.x)), 22u)]);
    var var_1 = global1.a;
    var var_2 = vec3<bool>(true, true, true);
    let var_3 = -284f;
    global4 = array<vec3<u32>, 5>();
    let var_4 = Struct_2(func_5(_wgslsmith_f_op_vec2_f32(func_1())), global1.b, vec2<i32>(57992i, -func_2(firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -52651i, 1i), global1.d, vec4<i32>(69239i, var_1.a.x, -2456i, u_input.a.x))).c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_3))).a.x, select(u_input.a.x, -var_1.a.x, false && var_2.x), ~(~var_1.a.x), min(-51956i, 21740i) ^ global1.d.x), _wgslsmith_clamp_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.x, global1.c.x, 2147483647i, u_input.a.x), vec4<i32>(global1.a.a.x, global1.d.x, var_1.a.x, u_input.a.x)), vec4<i32>(firstLeadingBit(u_input.a.x), func_5(vec2<f32>(-327f, global1.a.b)).a.x, global1.c.x, var_1.a.x), global1.d)));
    var var_5 = !(!(~reverseBits(4294967295u) == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29214u, 22u)], 18u)], 22u)]), 22u)], 22u)]));
    global2 = array<u32, 18>();
    let var_6 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(global1.b.x, global2[_wgslsmith_index_u32(4294967295u, 18u)]))), global1.b.wx), ~var_4.b.x);
}

