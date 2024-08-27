struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1495f, -1155f, 1597f, -346f, -661f, -247f, -591f, 1772f, -1326f, -230f, 1000f, 1529f, 259f, 1165f, 219f, 1546f, -872f, 254f, -465f, -196f, 704f, 709f, 1323f, 1000f, -902f, 1029f, 1000f, -876f);

var<private> global1: array<u32, 28>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, 22590u, 34502u, 0u), true), Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 3395u, 1u, 1u), false), Struct_1(vec3<bool>(false, false, false), vec4<u32>(54444u, 11254u, 0u, 0u), false), Struct_1(vec3<bool>(false, false, true), vec4<u32>(0u, 4294967295u, 7973u, 4294967295u), false), Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 136422u, 4294967295u, 48400u), true), Struct_1(vec3<bool>(true, true, false), vec4<u32>(15802u, 14555u, 4294967295u, 1u), false), Struct_1(vec3<bool>(true, true, false), vec4<u32>(4294967295u, 4294967295u, 9529u, 4294967295u), true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_4(Struct_2(global2[_wgslsmith_index_u32(~(~1u), 7u)], Struct_1(!arg_0.a, ~arg_0.b, true), _wgslsmith_f_op_f32(-492f * 1000f)), (arg_0.b ^ arg_0.b) | (firstLeadingBit(~arg_0.b) >> (~vec4<u32>(4294967295u, u_input.d.x, 1u, global1[_wgslsmith_index_u32(0u, 28u)]) % vec4<u32>(32u))), u_input.a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 28u)], 1192f), vec2<f32>(global0[_wgslsmith_index_u32(0u, 28u)], 366f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-176f, -1307f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1897f, var_0.a.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 28u)], 647f), vec2<f32>(-1000f, -1000f), false)), arg_0.a.zz))) * vec2<f32>(1629f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2015f), 1257f))));
    var var_2 = select(select(var_0.a.a.a, !vec3<bool>(false, true, arg_0.c), arg_0.a), !select(!(!arg_0.a), var_0.a.a.a, var_0.a.a.a), arg_0.a.x & false);
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-256f, -220f))), vec2<f32>(911f, 1266f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-839f, _wgslsmith_f_op_f32(trunc(-1064f)))))));
    return _wgslsmith_clamp_u32(35829u, 4294967295u, 23413u);
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 28>();
    let var_0 = true || (true | (all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true)) || true));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(28711u, 7u)], Struct_2(Struct_1(vec3<bool>(true, !var_0, var_0 | var_0), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], 72085u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)]) | vec4<u32>(54429u, 4294967295u, global1[_wgslsmith_index_u32(31203u, 28u)], global1[_wgslsmith_index_u32(15764u, 28u)]), false), global2[_wgslsmith_index_u32(select(u_input.d.x, u_input.d.x, var_0), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(0u, 28u)], 11266u), vec4<u32>(u_input.a.x, u_input.d.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), 28u)]))), Struct_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_3(global2[_wgslsmith_index_u32(0u, 7u)]), 28u)], 7u)], global2[_wgslsmith_index_u32(~(select(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], 56289u, true) & 3025u), 7u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a.x, 28u)] - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))))));
    global2 = array<Struct_1, 7>();
    let var_2 = Struct_2(Struct_1(select(vec3<bool>(false, all(vec3<bool>(var_0, false, true)), global0[_wgslsmith_index_u32(1u, 28u)] > global0[_wgslsmith_index_u32(4294967295u, 28u)]), var_1.b.b.a, var_1.b.a.a), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.d.x, 0u, global1[_wgslsmith_index_u32(1u, 28u)]), firstTrailingBit(min(var_1.b.a.b, vec4<u32>(51708u, 0u, 126u, 56775u)))), false != !var_1.a.a.x), var_1.c.b, var_1.c.c);
    return Struct_1(var_2.a.a, ~select(_wgslsmith_mod_vec4_u32(var_1.a.b, var_2.b.b), vec4<u32>(21789u, 4294967295u, var_2.a.b.x, 24301u) ^ _wgslsmith_sub_vec4_u32(var_1.c.a.b, var_2.a.b), !var_2.a.a.x & false), all(!select(!vec4<bool>(var_1.b.a.a.x, var_2.b.a.x, var_1.a.c, true), !vec4<bool>(true, var_1.a.a.x, true, true), var_1.c.b.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_2 {
    global1 = array<u32, 28>();
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_0.b.b.b.zy, countOneBits(arg_0.b.a.b.xy)), u_input.a.yx, u_input.d.yy), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b.a.b.x, 28u)], 28u)]), arg_0.a.b.yx) & firstLeadingBit(vec2<u32>(4294967295u, u_input.a.x)))), u_input.a.zx);
    global1 = array<u32, 28>();
    let var_1 = Struct_4(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 1u, 1u), arg_0.b.a.b >> (arg_0.c.b.b % vec4<u32>(32u))), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)]), 7u)], func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-162f, arg_0.c.c))))), ~arg_0.c.a.b, countOneBits(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(61568u, u_input.a.x), 728u, _wgslsmith_clamp_u32(1u & arg_0.b.b.b.x, ~1u, 37941u))));
    let var_2 = -u_input.b.x;
    return Struct_2(Struct_1(!arg_0.a.a, vec4<u32>(_wgslsmith_add_u32(~1u, func_2().b.x), ~abs(global1[_wgslsmith_index_u32(arg_0.b.b.b.x, 28u)]), select(u_input.d.x, var_1.b.x, select(var_1.a.b.c, true, arg_0.a.c)), ~9864u << (~global1[_wgslsmith_index_u32(0u, 28u)] % 32u)), var_1.a.a.c), func_2(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.c, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.b.x, _wgslsmith_mult_u32(57853u, var_0.x)), 28u)]) + var_1.a.c));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    global2 = array<Struct_1, 7>();
    let var_0 = func_4(Struct_3(func_2(), Struct_2(arg_0, Struct_1(arg_0.a, vec4<u32>(74592u, 1u, arg_0.b.x, 0u) | vec4<u32>(arg_0.b.x, arg_1, 4294967295u, arg_0.b.x), true && arg_0.a.x), 676f), Struct_2(Struct_1(vec3<bool>(arg_0.c, false, arg_0.a.x), vec4<u32>(global1[_wgslsmith_index_u32(42312u, 28u)], 64180u, 0u, 61196u), true), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40785u, 28u)], 28u)])))), vec2<i32>(~(-3113i) ^ reverseBits(u_input.c), 37156i));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(5256u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], 634f), vec3<f32>(global0[_wgslsmith_index_u32(var_0.b.b.x, 28u)], 433f, var_0.c), var_0.b.a))), vec3<f32>(var_0.c, var_0.c, _wgslsmith_f_op_f32(245f * 385f))))));
    global2 = array<Struct_1, 7>();
    return ~arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 28u)], 7u)], 1u), 28u)];
    global2 = array<Struct_1, 7>();
    var var_1 = Struct_3(Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)] > -884f, true, true), min(vec4<u32>(49257u << (1u % 32u), ~u_input.d.x, global1[_wgslsmith_index_u32(20347u, 28u)], ~global1[_wgslsmith_index_u32(4294967295u, 28u)]), reverseBits(~vec4<u32>(0u, global1[_wgslsmith_index_u32(6794u, 28u)], 0u, 45516u))), (true | all(vec3<bool>(false, true, true))) & (any(vec4<bool>(true, false, true, false)) == true)), func_4(Struct_3(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 7u)], Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<u32>(10506u, 10074u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 69011u), true), global2[_wgslsmith_index_u32(u_input.a.x, 7u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(35492u, 28u)])), Struct_2(global2[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(28210u, 28u)]), 7u)], global2[_wgslsmith_index_u32(u_input.a.x, 7u)], _wgslsmith_f_op_f32(143f + -201f))), _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b >> (func_2().b.wz % vec2<u32>(32u)), ~(~vec2<i32>(u_input.b.x, -1i)))), Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec4<u32>(~u_input.d.x, _wgslsmith_mult_u32(24537u, 63881u), global1[_wgslsmith_index_u32(2937u, 28u)], ~53212u), true), func_4(Struct_3(global2[_wgslsmith_index_u32(u_input.d.x, 7u)], func_4(Struct_3(global2[_wgslsmith_index_u32(1u, 7u)], Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], u_input.a.x, 4294967295u, 12633u), true), Struct_1(vec3<bool>(true, false, true), vec4<u32>(u_input.d.x, 96238u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 28u)]), false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36119u, 28u)], 28u)]), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35341u, 28u)], 28u)], 54840u, u_input.d.x), false), Struct_1(vec3<bool>(false, false, true), vec4<u32>(u_input.a.x, u_input.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 0u), true), 763f)), u_input.b), func_4(Struct_3(Struct_1(vec3<bool>(false, true, true), vec4<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], 0u, 1u, u_input.d.x), false), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 2657u, u_input.d.x, 74185u), false), Struct_1(vec3<bool>(false, true, false), vec4<u32>(global1[_wgslsmith_index_u32(39996u, 28u)], u_input.d.x, 202u, u_input.a.x), true), global0[_wgslsmith_index_u32(152381u, 28u)]), Struct_2(global2[_wgslsmith_index_u32(1u, 7u)], Struct_1(vec3<bool>(false, true, false), vec4<u32>(4294967295u, 4294967295u, u_input.d.x, 1u), false), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)])), u_input.b)), vec2<i32>(~u_input.b.x, 31332i)).b, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, global1[_wgslsmith_index_u32(38354u, 28u)] ^ global1[_wgslsmith_index_u32(16001u, 28u)])), 28u)]));
    let var_2 = u_input.d.x;
    var_1 = Struct_3(func_4(Struct_3(func_2(), Struct_2(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 7u)], Struct_1(vec3<bool>(true, true, var_1.c.b.c), vec4<u32>(u_input.a.x, 15823u, var_1.a.b.x, 0u), var_1.c.b.a.x), _wgslsmith_f_op_f32(ceil(var_1.b.c))), var_1.c), u_input.b).b, func_4(Struct_3(func_2(), var_1.b, func_4(Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], var_1.b, Struct_2(global2[_wgslsmith_index_u32(4294967295u, 7u)], Struct_1(vec3<bool>(var_1.c.b.c, true, false), vec4<u32>(1u, 25113u, var_1.a.b.x, u_input.d.x), false), -1327f)), vec2<i32>(34772i, 10565i))), _wgslsmith_div_vec2_i32(u_input.b, u_input.b)), var_1.b);
    var var_3 = Struct_2(Struct_1(vec3<bool>(~1u < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 34153u, u_input.a.x), vec3<u32>(1u, 1u, var_1.b.a.b.x)), all(var_1.b.b.a.xy) | (53880u == var_1.b.a.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(56724u, 27222u, var_2), vec3<u32>(77853u, 39567u, 0u)) <= var_2), vec4<u32>(u_input.a.x, ~var_2, u_input.d.x, func_2().b.x), var_1.a.c), var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.c * 176f)));
    var var_4 = false;
    let var_5 = Struct_4(Struct_2(func_4(Struct_3(Struct_1(vec3<bool>(false, var_3.b.a.x, var_1.c.b.c), vec4<u32>(3296u, var_1.a.b.x, var_1.b.a.b.x, 36248u), false), Struct_2(Struct_1(var_1.b.b.a, vec4<u32>(var_1.b.a.b.x, u_input.a.x, var_3.b.b.x, 48495u), var_1.b.a.a.x), global2[_wgslsmith_index_u32(var_3.b.b.x, 7u)], var_3.c), Struct_2(var_1.a, var_1.c.a, -1093f)), vec2<i32>(firstLeadingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, -59728i), vec4<i32>(-23911i, u_input.b.x, u_input.b.x, -19562i)))).a, func_2(), -587f), select(~var_1.a.b, abs(~var_3.a.b ^ reverseBits(vec4<u32>(54662u, u_input.d.x, 13955u, global1[_wgslsmith_index_u32(74235u, 28u)]))), !(!vec4<bool>(var_1.c.a.a.x, false, var_1.b.b.a.x, var_1.b.b.c))), _wgslsmith_div_u32(var_1.c.b.b.x, var_3.a.b.x));
    var var_6 = firstTrailingBit(abs(u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(~0u), 97209u, var_3.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.c)))));
}

