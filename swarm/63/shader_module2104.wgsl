struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 16>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f - -423f)), -1165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(trunc(232f)))), Struct_1(66446u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = 4294967295u;
    let var_0 = 49358i;
    var var_1 = u_input.a.xx;
    var_1 = ~vec2<u32>(1u, ~1u);
    var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(arg_2.a, 44493u), 29117u), ~abs(~firstLeadingBit(u_input.a.yz)));
    return arg_1.b;
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = select(max(_wgslsmith_sub_u32(~arg_0.a, ~u_input.a.x), arg_0.a), ~0u, select(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true && any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)) & true)) & 6584u;
    var var_1 = Struct_3(~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(11666i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 8387i, -18820i, 39387i), vec4<i32>(43429i, 0i, 35174i, 39968i)), _wgslsmith_div_i32(-9646i, -2147483647i), abs(10798i)), abs(countOneBits(vec4<i32>(-1i, 13670i, -2147483647i, -30763i)))), vec3<i32>(-2147483647i, 2147483647i, _wgslsmith_sub_i32(firstTrailingBit(1i), abs(_wgslsmith_div_i32(1i, -2147483647i)))));
    var_1 = Struct_3(var_1.a, ~(vec3<i32>(2147483647i, 0i, 11507i) >> (_wgslsmith_clamp_vec3_u32(u_input.a << (u_input.a % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0, arg_0.a, u_input.a.x), u_input.a), countOneBits(u_input.a)) % vec3<u32>(32u))));
    global1 = array<f32, 16>();
    var var_2 = Struct_3(_wgslsmith_clamp_i32(-1i, select(var_1.b.x, var_1.b.x, true), var_1.a), var_1.b);
    return global1[_wgslsmith_index_u32(~u_input.a.x, 16u)] > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-697f))) + 515f));
}

fn func_1() -> Struct_3 {
    let var_0 = !(func_4(func_3(vec3<i32>(1i, 1i, 1i), func_2(566f, Struct_4(67353u, 10447u, Struct_1(u_input.a.x), true, false), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], -1037f)), func_2(1571f, Struct_4(u_input.a.x, 15534u, Struct_1(75414u), true, false), vec2<f32>(125f, 720f)).b)) != false);
    let var_1 = Struct_3(_wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-16195i, 44540i)), vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(1i, 1i)), vec2<i32>(select(1i, ~(-12287i), any(vec3<bool>(var_0, true, false))), 2147483647i)), countOneBits(firstTrailingBit(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-5658i, -1i, -6698i)), ~vec3<i32>(16218i, 1i, -68081i), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -9175i, 0i), vec3<i32>(-1i, 1i, -25407i))))));
    var var_2 = func_3(var_1.b, func_2(278f, Struct_4(u_input.a.x, max(u_input.a.x, 95104u ^ u_input.a.x), Struct_1(~1u), !all(vec4<bool>(true, true, false, var_0)), var_0), vec2<f32>(1771f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -933f)))), Struct_1(24329u));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1558f, func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 16u)]), Struct_4(~var_2.a, u_input.a.x, func_2(-1567f, Struct_4(143664u, var_2.a, Struct_1(4294967295u), var_0, false), vec2<f32>(691f, global1[_wgslsmith_index_u32(29053u, 16u)])).b, true, var_0), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(var_2.a, 16u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(825f, -710f), vec2<f32>(1205f, -2133f)))))).a.x) - func_2(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(6300u, 16u)])), Struct_4(4294967295u, func_3(var_1.b, Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(var_2.a, 16u)], 120f, -585f, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), Struct_1(61468u)), func_3(vec3<i32>(45394i, var_1.a, var_1.b.x), Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(var_2.a)), Struct_1(1u))).a, Struct_1(var_2.a), any(!vec2<bool>(true, var_0)), var_0), vec2<f32>(249f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))).a.yy);
    let var_4 = _wgslsmith_sub_vec2_i32(vec2<i32>(9138i, -17648i) | -(-vec2<i32>(var_1.a, -2147483647i) | (vec2<i32>(-60404i, -64230i) & vec2<i32>(0i, var_1.b.x))), var_1.b.zx);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x ^ u_input.a.x), u_input.a.x) & _wgslsmith_add_u32(min(0u, _wgslsmith_mult_u32(u_input.a.x, 1u)), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), 60670u, u_input.a.x);
    var var_0 = func_1();
    var var_1 = select((countOneBits(min(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.a.x))) | u_input.a.yz) << ((select(u_input.a.zy, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 15234u), u_input.a.yz), vec2<bool>(true, true)) & _wgslsmith_clamp_vec2_u32(u_input.a.zx << (vec2<u32>(45522u, 4294967295u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(10183u, u_input.a.x) >> (vec2<u32>(34490u, 5492u) % vec2<u32>(32u)))) % vec2<u32>(32u)), ~vec2<u32>(~u_input.a.x, 0u), vec2<bool>(true, !func_4(Struct_1(14860u))));
    var var_2 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), vec4<bool>(func_4(Struct_1(0u)), -1530f >= global1[_wgslsmith_index_u32(var_1.x, 16u)], true, select(false, true, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), vec4<bool>(true, !func_4(Struct_1(var_1.x)), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, func_2(global1[_wgslsmith_index_u32(var_1.x, 16u)], Struct_4(1u, u_input.a.x, Struct_1(4294967295u), true, false), vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 16u)], global1[_wgslsmith_index_u32(var_1.x, 16u)])).a.x != -1336f, true)), !vec4<bool>(any(vec4<bool>(true, true, true, true)), func_4(Struct_1(1900u)), true, true), vec4<bool>(true, true, true, true));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(-9084i, -5204i), var_0.b.x);
    let var_4 = countOneBits(var_1.x) < 29330u;
    var_1 = vec2<u32>(32445u, ~func_3(var_0.b, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 1045f, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(var_1.x, 16u)])), func_2(-1892f, Struct_4(0u, 1195u, Struct_1(0u), false, false), vec2<f32>(-884f, global1[_wgslsmith_index_u32(35949u, 16u)])).b), func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, 12309i, var_0.b.x), var_0.b), func_2(global1[_wgslsmith_index_u32(1u, 16u)], Struct_4(u_input.a.x, 65827u, Struct_1(3084u), var_4, var_2.x), vec2<f32>(global1[_wgslsmith_index_u32(1u, 16u)], 311f)), Struct_1(var_1.x))).a);
    var_2 = select(!(!vec4<bool>(var_2.x, true, var_4, !var_4)), !(!vec4<bool>(false, true, false, 2147483647i >= var_0.b.x)), all(!vec3<bool>(var_4, true, !var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(-2147483647i, var_3 ^ 0i)), 15943i << (~(~var_1.x) % 32u)));
}

