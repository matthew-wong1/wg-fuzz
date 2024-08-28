struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(645f, -319f)), Struct_1(vec2<f32>(-594f, 2383f)), Struct_1(vec2<f32>(-411f, 203f)), Struct_1(vec2<f32>(547f, -638f)), Struct_1(vec2<f32>(2291f, -592f)), Struct_1(vec2<f32>(1059f, -1453f)), Struct_1(vec2<f32>(-745f, -979f)), Struct_1(vec2<f32>(803f, -328f)), Struct_1(vec2<f32>(744f, -726f)), Struct_1(vec2<f32>(1310f, 362f)), Struct_1(vec2<f32>(-398f, -1040f)), Struct_1(vec2<f32>(343f, 2753f)), Struct_1(vec2<f32>(1217f, 709f)), Struct_1(vec2<f32>(-282f, -547f)), Struct_1(vec2<f32>(-505f, -162f)), Struct_1(vec2<f32>(-577f, 811f)), Struct_1(vec2<f32>(646f, 950f)), Struct_1(vec2<f32>(616f, 359f)), Struct_1(vec2<f32>(830f, -836f)), Struct_1(vec2<f32>(376f, 618f)), Struct_1(vec2<f32>(-715f, 519f)), Struct_1(vec2<f32>(-1000f, 919f)), Struct_1(vec2<f32>(1738f, -2238f)), Struct_1(vec2<f32>(-800f, -830f)), Struct_1(vec2<f32>(830f, -1010f)), Struct_1(vec2<f32>(-1276f, -610f)), Struct_1(vec2<f32>(-468f, -151f)), Struct_1(vec2<f32>(1847f, 428f)), Struct_1(vec2<f32>(-1446f, 304f)), Struct_1(vec2<f32>(440f, -1486f)), Struct_1(vec2<f32>(-960f, -184f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = 638f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2184f), _wgslsmith_f_op_f32(sign(924f)))), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(545f * _wgslsmith_f_op_f32(f32(-1f) * -487f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1599f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(510f - -885f))) + _wgslsmith_f_op_f32(-678f * 282f)), -313f, true)));
    var var_2 = ~13653u;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_1.wz - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -1071f), _wgslsmith_f_op_vec2_f32(var_1.zw - vec2<f32>(var_1.x, -1371f))))), Struct_1(var_1.yz), 142f, true);
    global0 = array<Struct_1, 31>();
    return 11868u;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(vec2<f32>(_wgslsmith_div_f32(373f, -211f), _wgslsmith_div_f32(1064f, -1671f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f - -100f)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, ~0u), ~vec3<u32>(firstTrailingBit(4294967295u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 41712u), vec2<u32>(66098u, 83859u)))), ~func_3(vec3<u32>(1u, 1u, 1u) << (firstLeadingBit(vec3<u32>(80155u, 17275u, 17126u)) % vec3<u32>(32u)))), 31u)];
    let var_2 = ~1u;
    var var_3 = vec4<f32>(var_1.a.x, 2029f, _wgslsmith_f_op_f32(round(var_0.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -189f));
    global0 = array<Struct_1, 31>();
    return Struct_3(false | var_0.a.d);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = countOneBits(max(countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(11158u, 7881u), func_3(vec3<u32>(54926u, 35933u, 0u)))), 4294967295u));
    var var_1 = vec2<bool>(any(!(!vec3<bool>(arg_0.a, arg_0.a, true))) && (true && (_wgslsmith_sub_i32(16727i, u_input.a) <= u_input.a)), true);
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(~vec3<u32>(3584u, 4294967295u, 1u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1036u), vec3<u32>(52203u, 57242u, 64037u), ~vec3<u32>(32770u, 60136u, 26818u)), select(abs(vec3<u32>(0u, 0u, 4294967295u)), vec3<u32>(0u, 24875u, 4294967295u), vec3<bool>(var_1.x, arg_0.a, false))) & ~(min(vec3<u32>(4294967295u, 39855u, 1u), vec3<u32>(0u, 142239u, 36220u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(38767u, 32449u, 1u), vec3<u32>(5629u, 23293u, 5487u)) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 53079u, 1u), vec3<u32>(1u, 1u, 1u)), ~select(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(22535u, 4294967295u, 39665u)), select(vec3<bool>(arg_0.a, var_1.x, true), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(var_1.x, var_1.x, arg_0.a))) << (vec3<u32>(func_3(vec3<u32>(1u, 1u, 1u)), 1u, 61825u) % vec3<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-775f, -411f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2096f, -1949f), vec2<f32>(124f, 1354f))))));
    var var_4 = _wgslsmith_clamp_u32(~(~0u), var_2.x, _wgslsmith_add_u32(var_2.x, ~(75379u >> (0u % 32u))) << (_wgslsmith_mult_u32(~min(var_2.x, var_2.x), 24527u) % 32u));
    return global0[_wgslsmith_index_u32(~var_2.x, 31u)];
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = true && (any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))) || false);
    var var_1 = func_4(func_2());
    let var_2 = arg_0.xy;
    var var_3 = select(!vec2<bool>(false, !(!var_0)), select(vec2<bool>(true, true), select(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), var_0), vec2<bool>(var_0, -761f >= var_1.a.x), (var_2.x << (arg_0.x % 32u)) < ~arg_0.x), any(select(!vec4<bool>(var_0, false, false, true), vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0)))), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), vec2<bool>(true, var_0))), !select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(false, true)), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0))));
    var var_4 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(46054i, u_input.a, -56749i, _wgslsmith_sub_i32(u_input.a, -5523i)), firstTrailingBit(-vec4<i32>(3002i, u_input.a, u_input.a, 7265i))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(1i), -8498i, reverseBits(u_input.a), -13305i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 17271i, -24167i, 15134i), vec4<i32>(u_input.a, u_input.a, -2147483647i, 16879i)) | -vec4<i32>(57775i, u_input.a, -2147483647i, u_input.a)), ~(vec4<i32>(17632i, u_input.a, u_input.a, -2147483647i) ^ vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)) & ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)));
    return select(vec4<bool>(_wgslsmith_f_op_f32(sign(var_1.a.x)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1.a.x, -132f)))), any(!vec2<bool>(var_3.x, true)), !any(!vec2<bool>(var_0, true)), false), !(!select(vec4<bool>(var_0, false, false, true), !vec4<bool>(var_3.x, false, var_3.x, true), select(vec4<bool>(false, false, var_3.x, var_0), vec4<bool>(true, false, true, false), true))), select(select(select(vec4<bool>(false, false, var_0, true), select(vec4<bool>(false, var_3.x, false, false), vec4<bool>(var_3.x, true, true, var_3.x), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_3.x, false, var_0), var_0)), vec4<bool>(true, any(vec3<bool>(false, false, false)), true, !var_3.x), vec4<bool>(true, var_0, any(vec2<bool>(var_0, true)), var_3.x)), !vec4<bool>(true, !var_3.x, var_0 && var_3.x, var_0), select(!select(vec4<bool>(false, true, var_3.x, false), vec4<bool>(var_0, var_3.x, true, var_3.x), vec4<bool>(false, var_0, var_0, var_0)), !select(vec4<bool>(var_3.x, var_0, var_3.x, true), vec4<bool>(var_0, var_0, true, false), false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_1(vec4<u32>(32963u, 9275u, 16681u, 1u)), true), any(vec2<bool>(true, true))), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, true), func_1(~firstLeadingBit(vec4<u32>(0u, 1u, 0u, 1u)))), vec4<bool>(true, (select(4294967295u, 51413u, true) <= 0u) | true, u_input.a > min(~2147483647i, u_input.a), all(select(vec2<bool>(true, false), func_1(vec4<u32>(4294967295u, 40044u, 24650u, 100468u)).yy, vec2<bool>(true, true)))), true);
    let var_1 = all(vec2<bool>(true, var_0.x));
    let var_2 = _wgslsmith_f_op_f32(min(-794f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -689f))));
    var var_3 = func_2();
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-219f, -1917f), _wgslsmith_f_op_f32(-var_2)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2)), var_2)));
}

