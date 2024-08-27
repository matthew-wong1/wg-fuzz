struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_1(max(-(~abs(arg_1.x)), ~arg_0.d), true, !vec4<bool>(true, all(select(vec3<bool>(false, true, false), arg_0.c.wwx, false)), arg_0.c.x, true), abs(_wgslsmith_clamp_i32(0i, 12810i, _wgslsmith_sub_i32(select(-26807i, global2.a, true), 0i))));
    let var_1 = Struct_1(1i >> (_wgslsmith_mult_u32(~(~u_input.a), u_input.b.x >> ((u_input.c << (u_input.a % 32u)) % 32u)) % 32u), all(global1.c.yw), var_0.c, 11335i);
    global0 = array<Struct_1, 5>();
    global1 = arg_0;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~88162u), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 58783u, u_input.c), 1u)), 3352u << (~(min(44253u, u_input.c) | 10818u) % 32u)), 5u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1107f, 738f, 844f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(857f, 665f, 1039f) + vec3<f32>(-3147f, 1000f, 1110f))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-765f, -1575f, -681f), vec3<f32>(830f, -226f, 1000f))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -646f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1717f, 1800f), -564f)), _wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(floor(1543f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(641f, -791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2208f * 954f), _wgslsmith_f_op_f32(481f * -1695f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_3(Struct_1(abs(reverseBits(min(arg_2.a, -32269i))), true, arg_2.c, countOneBits(_wgslsmith_add_i32(global2.d, 1i))), vec4<i32>(firstTrailingBit(-87436i), arg_2.d, countOneBits(21665i & global2.d), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1062i, -1i), vec3<i32>(-31061i, -1i, global1.a)), arg_2.a)) | (firstTrailingBit(-vec4<i32>(0i, -57881i, 19520i, arg_2.a)) << (abs(vec4<u32>(arg_0.x, 7108u, arg_0.x, u_input.b.x)) % vec4<u32>(32u))), countOneBits(~min(arg_2.d, _wgslsmith_div_i32(arg_2.a, global2.d)))));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_1 = arg_2;
    return Struct_1(-firstTrailingBit(~(~0i)), false, select(vec4<bool>(var_0.x >= _wgslsmith_f_op_f32(f32(-1f) * -113f), all(vec3<bool>(true, global1.c.x, false)), firstTrailingBit(arg_1) < _wgslsmith_add_u32(u_input.a, 0u), global2.b), arg_2.c, vec4<bool>(true && !arg_2.b, arg_2.c.x, true, !global1.b)), arg_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = select(_wgslsmith_add_vec3_i32(min(-countOneBits(vec3<i32>(arg_2, arg_0.d, 0i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(3692i, arg_2, global2.a), vec3<i32>(global2.a, 76639i, global2.d))), (_wgslsmith_add_vec3_i32(vec3<i32>(1i, global1.d, global1.d), vec3<i32>(2147483647i, -39978i, -1i)) << (vec3<u32>(u_input.a, 1u, 81042u) % vec3<u32>(32u))) >> (vec3<u32>(arg_1, ~1u, 26498u & arg_1) % vec3<u32>(32u))), firstLeadingBit(abs(-(vec3<i32>(88697i, global1.d, arg_0.a) ^ vec3<i32>(arg_0.d, 39714i, 0i)))), global1.c.zzw);
    let var_1 = -460f;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 0u), 5u)];
    var var_3 = !select(!(!func_2(u_input.b.xx, 1u, Struct_1(-34218i, false, vec4<bool>(var_2.c.x, false, arg_0.b, global1.c.x), 2147483647i)).c.wwz), select(vec3<bool>(arg_2 >= -2147483647i, any(vec3<bool>(global1.c.x, true, var_2.c.x)), any(vec3<bool>(var_2.b, true, global1.c.x))), vec3<bool>(any(arg_0.c.yyw), true, select(global1.b, true, global2.c.x)), true), func_2(~u_input.b.yx, ~max(0u, u_input.c), func_2(vec2<u32>(u_input.c, 0u), arg_1, arg_0)).c.zxy);
    var var_4 = arg_2;
    return true;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = global2.c;
    var_0 = !vec4<bool>(global2.b, 1i > _wgslsmith_clamp_i32(global1.a, global2.d, 37854i), func_4(func_2(abs(vec2<u32>(14339u, 4294967295u)), ~24701u, global0[_wgslsmith_index_u32(reverseBits(4294967295u), 5u)]), arg_2.x >> ((u_input.b.x | 9229u) % 32u), func_2(vec2<u32>(19264u, u_input.a), arg_2.x, Struct_1(0i, false, vec4<bool>(arg_1.x, arg_1.x, true, false), -2147483647i)).a & (global2.d ^ global2.a)), arg_0);
    let var_1 = Struct_1(_wgslsmith_sub_i32(global1.d, global1.d), true, func_2(~(_wgslsmith_mod_vec2_u32(arg_2, vec2<u32>(u_input.b.x, 15791u)) >> ((arg_2 | vec2<u32>(arg_2.x, 14705u)) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 44111u, u_input.b.x)), vec3<u32>(_wgslsmith_add_u32(4294967295u, arg_2.x), arg_2.x, reverseBits(u_input.c))), Struct_1(_wgslsmith_add_i32(firstLeadingBit(global1.d), 26858i), true, arg_1, select(global2.d << (1u % 32u), -global2.d, true))).c, countOneBits(-7607i));
    var var_2 = abs(vec2<u32>(~0u, 4294967295u));
    let var_3 = Struct_1(-2147483647i, arg_1.x, func_2(~_wgslsmith_sub_vec2_u32(arg_2, arg_2), ~_wgslsmith_dot_vec3_u32(~u_input.b, countOneBits(u_input.b)), var_1).c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global1.d, global2.d, global1.d), _wgslsmith_sub_i32(global2.a, var_1.a), abs(global1.d), -1i), reverseBits(vec4<i32>(global2.a, 2147483647i, global1.d, global1.a) << (vec4<u32>(arg_2.x, var_2.x, u_input.b.x, 1u) % vec4<u32>(32u)))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-626f * 1266f) + _wgslsmith_f_op_f32(round(1828f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1012f * -534f) - -701f)))), -212f);
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = vec4<bool>(global1.b, true, func_2(vec2<u32>(47582u, ~1264u) >> ((~vec2<u32>(u_input.c, u_input.a) << (u_input.b.xz % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_u32(24845u, ~select(u_input.b.x, u_input.b.x, global1.b)), func_2(vec2<u32>(arg_1, u_input.b.x >> (62u % 32u)), max(u_input.c, reverseBits(4294967295u)), global0[_wgslsmith_index_u32(firstTrailingBit(~arg_1), 5u)])).b, !(true | global2.b) || true);
    var var_1 = reverseBits(~max(~u_input.b.zz, u_input.b.yx));
    var_1 = ~(~firstLeadingBit(abs(u_input.b.yz) | vec2<u32>(5610u, 4294967295u)));
    var var_2 = -_wgslsmith_mod_i32(38073i, -1i);
    let var_3 = global0[_wgslsmith_index_u32(10267u, 5u)];
    return Struct_1(global1.d, !(!any(global1.c.yw)), var_0, _wgslsmith_clamp_i32(i32(-1i) * -11453i, 0i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-96394i, var_3.d, var_3.d), reverseBits(vec3<i32>(var_3.a, var_3.d, global1.d)), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, -2147483647i), vec3<i32>(0i, global1.a, var_3.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(-45985i, -12251i, 2147483647i), vec3<i32>(global1.d, global1.d, -18099i) & vec3<i32>(var_3.d, -17386i, 26609i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(255f - 1000f), -1064f), 375f, false)), _wgslsmith_f_op_f32(func_1(global2.c.x, !global1.c, select(min(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, 7755u)), ~u_input.b.xz, vec2<bool>(global1.b, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(532f + 771f)))), _wgslsmith_f_op_f32(f32(-1f) * -1559f)), ~u_input.c, vec4<f32>(352f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(860f + _wgslsmith_f_op_f32(min(-933f, 1807f))))), _wgslsmith_f_op_f32(func_1(global2.b, global1.c, vec2<u32>(u_input.a, max(u_input.b.x, u_input.c)))), _wgslsmith_f_op_f32(158f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1065f, 1387f, global2.c.x)), _wgslsmith_div_f32(282f, 1310f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(global1.a, func_2(u_input.b.yx, 0u << (1u % 32u), Struct_1(global1.a, false, vec4<bool>(global2.b, false, global2.b, global1.b), -14247i)).a)), -725f, abs(firstLeadingBit(vec2<i32>(global2.d, -1i)) ^ vec2<i32>(-33828i, -2147483647i)) | vec2<i32>(-global1.a << (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a, u_input.a, 0u)) % 32u), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1300f, 811f, 211f, 672f)), u_input.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1031f, 799f, -521f, -284f), vec4<f32>(406f, -1522f, 1917f, 472f)))).a), 0i, u_input.c);
}

