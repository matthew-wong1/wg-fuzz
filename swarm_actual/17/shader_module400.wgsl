struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false));

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(2147483647i, 24445i), vec2<i32>(-72581i, 1i), vec2<i32>(0i, 57109i), vec2<i32>(3026i, 0i), vec2<i32>(-53277i, 28764i), vec2<i32>(i32(-2147483648), -31565i), vec2<i32>(-1i, 1i));

var<private> global2: vec2<i32>;

var<private> global3: vec4<bool>;

var<private> global4: array<u32, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global3 = vec4<bool>(global3.x, !any(select(!global3.ww, select(vec2<bool>(true, arg_0), global3.yy, global3.zz), global3.zy)), true | global3.x, all(global3.yy));
    var var_0 = ~select(~abs(min(vec4<u32>(arg_1.a.x, arg_2.b.x, 4294967295u, 42616u), vec4<u32>(1u, arg_2.a.x, 4294967295u, 0u))), vec4<u32>(0u, global4[_wgslsmith_index_u32(min(arg_1.a.x, 1u), 29u)], abs(~arg_2.a.x), ~1u), !global0[_wgslsmith_index_u32(4294967295u, 24u)]);
    var_0 = vec4<u32>(firstLeadingBit(~(~var_0.x)), ~abs(countOneBits(arg_1.b.x)), 1u, arg_2.a.x) << (~(vec4<u32>(_wgslsmith_mult_u32(arg_2.b.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(45733u, arg_2.b.x, global4[_wgslsmith_index_u32(12029u, 29u)], var_0.x), vec4<u32>(var_0.x, 4294967295u, var_0.x, global4[_wgslsmith_index_u32(1u, 29u)])), ~0u, ~67739u) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(4294967295u, 29u)], 34260u, 49581u), vec4<u32>(1u, arg_1.a.x, 4294967295u, 51361u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(33760u, 3842u, 33402u, global4[_wgslsmith_index_u32(50789u, 29u)]), vec4<u32>(32360u, arg_1.a.x, var_0.x, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_1(~_wgslsmith_sub_vec2_u32(arg_1.b, vec2<u32>(~global4[_wgslsmith_index_u32(arg_1.a.x, 29u)], arg_2.b.x | arg_2.b.x)), arg_1.a);
    global3 = vec4<bool>(true, true, global3.x, global3.x);
    return abs(_wgslsmith_add_vec3_u32(firstLeadingBit(abs(vec3<u32>(arg_2.a.x, arg_2.b.x, 78630u))), vec3<u32>(firstTrailingBit(~15424u), global4[_wgslsmith_index_u32(var_1.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(arg_1.b.x, 29u)], var_0.x, 13425u)) % 32u), 29u)], min(1u, ~43545u))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    var var_0 = Struct_1(vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(39980u, 29u)], 29u)], 29u)], 29u)], 29u)]), 29u)]), 29u)], 29u)]), vec2<u32>(global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(~(global4[_wgslsmith_index_u32(72228u, 29u)] | 85696u) >> (~global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(10309u, 29074u), 29u)] % 32u), 29u)]));
    let var_1 = select(select(!select(vec4<bool>(false, arg_1, global3.x, false), global0[_wgslsmith_index_u32(~4294967295u, 24u)], select(vec4<bool>(global3.x, arg_0.x, false, false), vec4<bool>(arg_0.x, global3.x, false, global3.x), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.a.x, 29u)], 29u)], 29u)], 24u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~func_3(arg_1, Struct_1(var_0.a, vec2<u32>(global4[_wgslsmith_index_u32(73501u, 29u)], 19595u)), Struct_1(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.b.x, 29u)], 29u)], 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(38969u, 29u)], 41174u))), (vec3<u32>(global4[_wgslsmith_index_u32(var_0.b.x, 29u)], var_0.a.x, global4[_wgslsmith_index_u32(var_0.a.x, 29u)]) ^ vec3<u32>(33799u, 9430u, 57203u)) << (func_3(global3.x, Struct_1(vec2<u32>(global4[_wgslsmith_index_u32(4294967295u, 29u)], var_0.b.x), var_0.b), Struct_1(vec2<u32>(4294967295u, 6348u), var_0.a)) % vec3<u32>(32u))), 24u)], !all(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(var_0.a.x, 29u)]), 24u)])), select(select(select(select(global0[_wgslsmith_index_u32(13758u, 24u)], vec4<bool>(true, true, arg_0.x, false), true), select(global0[_wgslsmith_index_u32(var_0.b.x, 24u)], global0[_wgslsmith_index_u32(9536u, 24u)], global0[_wgslsmith_index_u32(var_0.a.x, 24u)]), global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(true, false, true, arg_1 && arg_1), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(24594u, 10631u), var_0.b), reverseBits(vec2<u32>(global4[_wgslsmith_index_u32(79844u, 29u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23378u, 29u)], 29u)]))), 24u)]), global0[_wgslsmith_index_u32(countOneBits(var_0.b.x), 24u)], global0[_wgslsmith_index_u32(countOneBits(var_0.b.x), 24u)]), true);
    var var_2 = Struct_1(vec2<u32>(var_0.b.x, var_0.a.x), var_0.a);
    global0 = array<vec4<bool>, 24>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2259f * -1803f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-818f + 264f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(671f, -131f))))))));
    return ~_wgslsmith_div_u32(global4[_wgslsmith_index_u32(func_3(arg_0.x, Struct_1(var_0.a, _wgslsmith_mod_vec2_u32(var_0.a, var_2.a)), Struct_1(var_0.a, vec2<u32>(9104u, var_0.a.x))).x, 29u)], _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(_wgslsmith_add_u32(var_0.a.x, 1u), _wgslsmith_mod_u32(var_2.b.x, var_2.b.x))));
}

fn func_1() -> Struct_1 {
    global4 = array<u32, 29>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 517f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + -820f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(587f)))))), 1000f);
    var var_1 = Struct_1(vec2<u32>(reverseBits(func_2(vec2<bool>(global3.x, true), false)) >> (_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)] | global4[_wgslsmith_index_u32(35780u, 29u)], 29u)], ~global4[_wgslsmith_index_u32(0u, 29u)]) % 32u), 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(12759u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(52610u, 29u)], 52900u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 0u), vec4<u32>(global4[_wgslsmith_index_u32(1u, 29u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14310u, 29u)], 29u)], 29u)], 21658u, 5575u))), ~vec2<u32>(~global4[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42788u, 29u)], 29u)], 18078u))));
    global3 = !global0[_wgslsmith_index_u32(var_1.b.x, 24u)];
    var var_2 = false;
    return Struct_1(vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(select(_wgslsmith_add_vec2_u32(~var_1.b, min(var_1.b, vec2<u32>(var_1.a.x, 37492u))), vec2<u32>(var_1.a.x ^ 2332u, countOneBits(4294967295u)), !global3.x), firstTrailingBit(firstTrailingBit(vec2<u32>(global4[_wgslsmith_index_u32(5961u, 29u)], global4[_wgslsmith_index_u32(var_1.b.x, 29u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 990f;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-163f)), _wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(-734f - 1098f), -1232f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1287f + 352f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f + 1051f)), -232f, 467f)))));
    global4 = array<u32, 29>();
    let var_2 = func_1();
    global1 = array<vec2<i32>, 7>();
    let var_3 = u_input.d;
    let var_4 = u_input.c;
    let var_5 = _wgslsmith_f_op_f32(460f * _wgslsmith_f_op_f32(floor(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4.wwy << ((max(vec3<u32>(45025u, var_2.a.x, 1u) & vec3<u32>(18335u, var_2.b.x, 4294967295u), vec3<u32>(0u, var_2.b.x, global4[_wgslsmith_index_u32(0u, 29u)])) | ~(vec3<u32>(global4[_wgslsmith_index_u32(35684u, 29u)], 4294967295u, 84937u) >> (vec3<u32>(4294967295u, var_2.a.x, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u)), func_3((_wgslsmith_div_i32(-7913i, 2147483647i) <= _wgslsmith_mult_i32(-15664i, var_4.x)) | false, Struct_1(vec2<u32>(~var_2.b.x, abs(global4[_wgslsmith_index_u32(var_2.a.x, 29u)])), vec2<u32>(4294967295u, var_2.b.x << (8978u % 32u))), func_1()).x, 2147483647i, -var_4);
}

