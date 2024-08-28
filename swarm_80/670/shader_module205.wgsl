struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(-12497i, 2147483647i), Struct_2(vec4<f32>(-1283f, -568f, -2060f, 2210f)), -6768i, Struct_1(30239u, 123434u, -20088i, -1000f, vec4<bool>(false, false, true, true)), vec2<u32>(47421u, 1u));

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-1755i, -1i), vec2<i32>(1i, 48595i), vec2<i32>(-11038i, 11838i), vec2<i32>(0i, -34109i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, -7528i), vec2<i32>(27483i, -648i), vec2<i32>(1i, -77447i), vec2<i32>(10802i, 1i), vec2<i32>(-1i, -1318i), vec2<i32>(1i, 2147483647i), vec2<i32>(22152i, -25069i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -5920i), vec2<i32>(58011i, 2147483647i));

var<private> global3: array<f32, 4> = array<f32, 4>(-309f, -839f, -450f, -776f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<u32>) -> i32 {
    global3 = array<f32, 4>();
    global3 = array<f32, 4>();
    global1 = array<Struct_2, 8>();
    var var_0 = _wgslsmith_dot_vec4_u32(abs(~reverseBits(~vec4<u32>(global0.e.x, 0u, 54742u, 1u))), vec4<u32>(reverseBits(~u_input.a), ~4294967295u, ~u_input.a, 23094u));
    let var_1 = Struct_1(_wgslsmith_mult_u32(u_input.a, global0.d.a), ~1u ^ global0.d.b, _wgslsmith_add_i32(1i, global0.c), 284f, vec4<bool>(false, !(_wgslsmith_div_i32(u_input.b.x, global0.c) < 24050i), any(global0.d.e), global0.d.e.x));
    return ~var_1.c;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> vec2<i32> {
    let var_0 = Struct_3(u_input.b.zy, global1[_wgslsmith_index_u32(global0.d.b, 8u)], ~select(i32(-1i) * -43615i, 2147483647i, true) & u_input.b.x, Struct_1(1u, global0.e.x, global0.c, _wgslsmith_f_op_f32(-arg_1.a.x), global0.d.e), vec2<u32>(1u, ~_wgslsmith_div_u32(18084u, ~u_input.a)));
    let var_1 = vec4<i32>(-39704i, global0.c, _wgslsmith_mult_i32(-firstTrailingBit(-var_0.d.c), global0.d.c), ~((1i >> (select(global0.e.x, var_0.d.b, global0.d.e.x) % 32u)) >> (~(~global0.e.x) % 32u)));
    global0 = Struct_3(var_0.a, var_0.b, _wgslsmith_mod_i32(~u_input.b.x, ~_wgslsmith_dot_vec3_i32(var_1.xwx, var_1.wzw & vec3<i32>(var_0.d.c, var_1.x, var_0.d.c))), var_0.d, vec2<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(var_0.e, var_0.e) ^ (0u << (0u % 32u))));
    var var_2 = var_0.b;
    global0 = Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d.c, 2147483647i), vec2<i32>(83340i, u_input.b.x), var_1.yy), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -1i) & vec2<i32>(-2147483647i, -2147483647i), u_input.b.yx)), vec2<i32>(26120i, func_3(global0.b.a.zw, global0.e) | 52590i)), global0.b, -1073i ^ -u_input.b.x, var_0.d, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(global0.d.a, var_0.d.a), global0.e), vec2<u32>(0u, 0u), all(vec2<bool>(false, false))), ~var_0.e, abs(~vec2<u32>(u_input.a, var_0.e.x))), var_0.e));
    return firstLeadingBit(~(-_wgslsmith_clamp_vec2_i32(var_0.a, _wgslsmith_div_vec2_i32(global0.a, vec2<i32>(var_0.c, var_0.d.c)), var_1.ww & var_1.xy)));
}

fn func_1() -> i32 {
    global3 = array<f32, 4>();
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(func_2(global0.d.e.x, Struct_2(vec4<f32>(global0.b.a.x, 1481f, 995f, global3[_wgslsmith_index_u32(u_input.a, 4u)])), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(global0.d.b, 4u)], global0.b.a.x))), vec2<i32>(~global0.d.c, ~global0.a.x)), u_input.b.x) <= reverseBits(~0i);
    return u_input.b.x;
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = firstTrailingBit(61901u);
    global0 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -(~1i)), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0, 1365u, var_0, 0u)), vec4<u32>(u_input.a, global0.e.x, 4294967295u, u_input.a) & vec4<u32>(1u, 13916u, 17201u, global0.d.b))), 15u)]), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -763f), 1094f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1834f * global0.b.a.x))), _wgslsmith_f_op_f32(trunc(-979f)))), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0, ~u_input.b.x), ~u_input.b.x), Struct_1(~firstTrailingBit(100158u >> (1u % 32u)), _wgslsmith_div_u32(~firstTrailingBit(global0.d.b), ~1u), -1i, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0, 4u)]), global0.d.e), vec2<u32>(32879u, var_0));
    global1 = array<Struct_2, 8>();
    let var_1 = arg_0;
    global0 = Struct_3(-firstLeadingBit(vec2<i32>(u_input.b.x, abs(u_input.b.x))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(~global0.e.x ^ u_input.a, abs(min(15528u, global0.d.a))), abs(~4294967295u)), 8u)], -57660i, Struct_1(global0.e.x, global0.d.b, u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1647f), global0.d.e), (global0.e >> (max(_wgslsmith_add_vec2_u32(global0.e, vec2<u32>(u_input.a, 17232u)), ~vec2<u32>(11222u, global0.e.x)) % vec2<u32>(32u))) >> (global0.e % vec2<u32>(32u)));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d.e.x;
    global2 = array<vec2<i32>, 15>();
    let var_1 = func_4(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x | func_1(), global0.d.c), -1i));
    let var_2 = select(!(!var_1.e), !global0.d.e, global0.d.e.x || true);
    global2 = array<vec2<i32>, 15>();
    let var_3 = global0.d.a;
    let var_4 = Struct_3(-(vec2<i32>(_wgslsmith_mult_i32(global0.c, var_1.c), u_input.b.x) << (global0.e % vec2<u32>(32u))), global0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-abs(vec2<i32>(-59528i, global0.c)), -(~global2[_wgslsmith_index_u32(70607u, 15u)])), func_2(true, global0.b, _wgslsmith_f_op_f32(trunc(-344f))) & global2[_wgslsmith_index_u32(~var_1.a >> (global0.d.b % 32u), 15u)]), Struct_1(var_1.a, 41839u ^ _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, var_1.b, 0u, 0u), vec4<u32>(u_input.a, 1u, 27577u, 0u)), vec4<u32>(13076u, 31047u, var_1.a, 0u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-48432i, func_2(false, global1[_wgslsmith_index_u32(95573u, 8u)], 444f).x), _wgslsmith_add_i32(~44827i, _wgslsmith_dot_vec3_i32(u_input.b.xzx, u_input.b.yzz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 4u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))), !var_1.e), _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(global0.e, firstTrailingBit(global0.e)), ~global0.e));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(vec4<u32>(41763u, var_1.a, 14625u, ~global0.e.x))), vec2<u32>((max(5719u, var_4.d.b) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.e.x, 1u, global0.d.b), vec3<u32>(var_1.b, 0u, var_1.b)) % 32u)) & 0u, var_1.a));
}

