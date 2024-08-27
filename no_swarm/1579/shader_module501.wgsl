struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<i32>(1i, 16854i), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648))), true), Struct_2(vec2<i32>(-39264i, 7667i), Struct_1(vec2<i32>(703i, 1i)), true), Struct_2(vec2<i32>(25291i, 46385i), Struct_1(vec2<i32>(0i, 21565i)), false), Struct_2(vec2<i32>(7914i, i32(-2147483648)), Struct_1(vec2<i32>(-52194i, 6359i)), true), Struct_2(vec2<i32>(-69271i, 1i), Struct_1(vec2<i32>(19540i, -45659i)), false), Struct_2(vec2<i32>(-24685i, -1i), Struct_1(vec2<i32>(-10952i, -17517i)), true), Struct_2(vec2<i32>(13620i, -1i), Struct_1(vec2<i32>(-9245i, -3374i)), true), Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(vec2<i32>(i32(-2147483648), 0i)), false), Struct_2(vec2<i32>(5531i, -46857i), Struct_1(vec2<i32>(-43870i, 70928i)), true), Struct_2(vec2<i32>(-25086i, 20978i), Struct_1(vec2<i32>(1i, 8877i)), false), Struct_2(vec2<i32>(-61773i, 1i), Struct_1(vec2<i32>(-97822i, 15592i)), false), Struct_2(vec2<i32>(170i, 14480i), Struct_1(vec2<i32>(1i, 19045i)), true), Struct_2(vec2<i32>(2147483647i, 4142i), Struct_1(vec2<i32>(-1i, -37677i)), false), Struct_2(vec2<i32>(48172i, 0i), Struct_1(vec2<i32>(i32(-2147483648), 26087i)), true), Struct_2(vec2<i32>(i32(-2147483648), -76373i), Struct_1(vec2<i32>(-10149i, 0i)), true), Struct_2(vec2<i32>(30594i, -1i), Struct_1(vec2<i32>(-28155i, 1i)), true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3) -> bool {
    let var_0 = vec2<bool>(true, true);
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    return any(arg_1.d);
}

fn func_2() -> Struct_1 {
    let var_0 = !vec3<bool>(all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), true)), !func_3(vec2<u32>(56326u, u_input.c), Struct_3(Struct_1(vec2<i32>(u_input.b, 2657i)), global0[_wgslsmith_index_u32(u_input.c, 16u)], 0u, vec2<bool>(true, true))), _wgslsmith_f_op_f32(round(-348f)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1445f, -2148f))));
    var var_1 = !var_0.x;
    var var_2 = Struct_3(Struct_1(u_input.a), Struct_2(u_input.a, Struct_1(vec2<i32>(-1i, _wgslsmith_mult_i32(-2147483647i, 1i))), var_0.x), ~_wgslsmith_sub_u32((u_input.c ^ u_input.d) << (~u_input.d % 32u), 83529u), !select(var_0.xx, !select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), false), vec2<bool>(true, true)));
    let var_3 = var_2.b.c;
    var var_4 = vec3<bool>(true, 471f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)))), false);
    return Struct_1(vec2<i32>(-_wgslsmith_mod_i32(var_2.b.b.a.x, var_2.b.b.a.x >> (u_input.d % 32u)), -_wgslsmith_sub_i32(2147483647i, u_input.e.x >> (0u % 32u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> bool {
    var var_0 = Struct_2(u_input.a, Struct_1(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(26131i, firstTrailingBit(-20326i)))), arg_1);
    global0 = array<Struct_2, 16>();
    var_0 = Struct_2(~(-(~var_0.a | ~vec2<i32>(25570i, -1i))), func_2(), all(vec4<bool>(true, var_0.c, true, func_3(vec2<u32>(22290u, 15831u), Struct_3(var_0.b, global0[_wgslsmith_index_u32(1u, 16u)], u_input.d, vec2<bool>(var_0.c, var_0.c))))) || true);
    var_0 = global0[_wgslsmith_index_u32(68530u, 16u)];
    var_0 = Struct_2(abs(min(var_0.b.a, select(u_input.a, u_input.a, true && arg_1))), Struct_1(firstTrailingBit(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-12255i, u_input.a.x)), var_0.a))), true);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(372f, -844f, 274f))), true), any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), true)), true, true));
    var var_1 = any(vec3<bool>(select(false, all(vec3<bool>(false, true, false)), true), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), func_3(vec2<u32>(1u, ~u_input.c), Struct_3(func_2(), global0[_wgslsmith_index_u32(4294967295u << (u_input.d % 32u), 16u)], _wgslsmith_mod_u32(u_input.c, u_input.d), vec2<bool>(true, true)))));
    let var_2 = vec2<u32>(~(~(~min(1u, 1u))), max(_wgslsmith_sub_u32(u_input.d ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 37428u, u_input.d), vec4<u32>(u_input.c, u_input.d, 7979u, 0u)), 42322u), 0u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-204f, -811f), -1322f)) * _wgslsmith_f_op_f32(-1326f - -379f)))) * 829f);
    var_1 = !any(vec2<bool>(true, false));
    var var_4 = Struct_1(_wgslsmith_mult_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.e.zz), abs(u_input.e.yy), vec2<i32>(0i, -1i) << (vec2<u32>(var_2.x, u_input.c) % vec2<u32>(32u))), u_input.a)));
    var var_5 = vec4<u32>(~(u_input.d >> (24207u % 32u)), ~firstTrailingBit(1u), ~_wgslsmith_mult_u32(0u, 0u), u_input.c);
    var_5 = select(_wgslsmith_div_vec4_u32(~vec4<u32>(~1u, var_2.x ^ var_5.x, var_2.x, _wgslsmith_clamp_u32(26243u, u_input.c, var_5.x)), vec4<u32>(~_wgslsmith_mult_u32(1u, 10550u), var_2.x, 10583u, ~4294967295u)), ~(~min(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<u32>(46295u, 1u, var_2.x, 87470u))), !select(true, (var_5.x & 5160u) != select(u_input.c, var_2.x, false), u_input.c <= ~0u));
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, 129273u, 3522u, 0u), vec4<u32>(var_2.x, u_input.d, 0u, u_input.d)), vec4<u32>(~var_2.x, ~0u, ~u_input.c, ~1u)) >> (~var_2.x % 32u), firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(-var_4.a.x, 1i, var_4.a.x | 43117i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e, vec3<i32>(12192i, var_6.a.x, 47247i)), u_input.e))), _wgslsmith_clamp_vec3_u32(var_5.wwx, ~(~vec3<u32>(var_5.x, 4294967295u, var_2.x)), ~(~var_5.wxx << (~vec3<u32>(var_2.x, 13548u, var_2.x) % vec3<u32>(32u)))));
}

