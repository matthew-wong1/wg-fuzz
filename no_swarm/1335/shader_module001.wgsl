struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(15028u, 3578u, 38629u);

var<private> global1: array<Struct_2, 17>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_2, 17>();
    var var_0 = Struct_1(~arg_3.d | vec3<u32>(abs(1u), _wgslsmith_mod_u32(countOneBits(13457u), arg_2.d.x), _wgslsmith_clamp_u32(62464u, arg_3.a.x, arg_3.a.x) << (100939u % 32u)), arg_3.b, vec2<u32>(~0u, 1u), max(abs(vec3<u32>(1u, arg_2.d.x, global0.x) << (arg_3.a % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(arg_2.a.x, 35472u, 0u)), countOneBits(vec3<u32>(arg_2.d.x, 32058u, 23295u))), vec3<u32>(50097u, ~(1u >> (global0.x % 32u)), arg_2.a.x)));
    global1 = array<Struct_2, 17>();
    let var_1 = abs(~(~(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, 37456i), vec3<i32>(-1i, 13794i, u_input.a)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, 55748i), vec3<i32>(2147483647i, u_input.a, u_input.a)))));
    var var_2 = ~(~u_input.a);
    return _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(var_0.c, arg_3.c), min(~var_0.c.x, arg_2.a.x));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(~reverseBits(select(vec3<u32>(arg_1.a, global0.x, 0u), vec3<u32>(arg_1.a, arg_1.a, 49171u), false)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(0u, global0.x, 1u)), (vec3<u32>(arg_1.a, global0.x, 1u) & vec3<u32>(17578u, arg_1.a, 1u)) | vec3<u32>(12328u, 56268u, 65136u))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), all(vec3<bool>(true, true, true))), vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false)), true || all(vec3<bool>(true, false, true)), true), vec4<bool>(true, select(all(vec2<bool>(true, true)), -60762i >= u_input.a, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), !all(vec2<bool>(false, true)))), firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~global0.yz)) | global0.zx, vec3<u32>(_wgslsmith_add_u32(arg_1.a, 43020u), 2101u & ~global0.x, arg_1.a));
    var var_1 = Struct_2(~1u ^ _wgslsmith_clamp_u32(_wgslsmith_sub_u32(firstLeadingBit(var_0.a.x), reverseBits(var_0.c.x)), ~countOneBits(arg_1.a), func_3(var_0.b.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1467f, -215f, arg_0), vec3<f32>(arg_0, -322f, arg_0), var_0.b.wwx)), Struct_1(vec3<u32>(0u, global0.x, global0.x), vec4<bool>(true, true, false, var_0.b.x), vec2<u32>(4294967295u, 4892u), var_0.d), Struct_1(vec3<u32>(29837u, arg_1.a, 40419u), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true), global0.xy, var_0.d))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, 1595f, arg_0))), vec3<f32>(arg_0, arg_0, -557f), any(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, 936f), vec3<f32>(arg_0, 417f, -835f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(334f, arg_0, arg_0), vec3<f32>(-1000f, arg_0, -528f)))))))));
    return Struct_1(vec3<u32>(_wgslsmith_div_u32(global0.x, _wgslsmith_mod_u32(~58184u, var_0.a.x)), max(1u, 33562u), (~arg_1.a >> (~78947u % 32u)) << (6331u % 32u)), !var_0.b, ~(~_wgslsmith_mult_vec2_u32(select(var_0.c, global0.xz, var_0.b.zx), var_0.d.zz)), reverseBits(var_0.d));
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    return vec3<bool>(false, true, func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1655f))), _wgslsmith_f_op_f32(round(-2013f)), arg_0.b.x)), Struct_2(1u)).b.x);
}

fn func_1() -> vec2<bool> {
    let var_0 = !func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-132f * -886f) * _wgslsmith_div_f32(950f, 299f)), global1[_wgslsmith_index_u32(~9326u, 17u)]));
    global1 = array<Struct_2, 17>();
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_sub_u32(global0.x, global0.x), 0u, 1u) ^ vec4<u32>(global0.x, 0u, global0.x, global0.x ^ 4294967295u), ~vec4<u32>(10028u, global0.x, 1u, 0u) | (_wgslsmith_add_vec4_u32(vec4<u32>(25167u, global0.x, global0.x, global0.x), vec4<u32>(0u, global0.x, 14044u, global0.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(19029u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x), vec4<u32>(1u, global0.x, global0.x, global0.x)))), global0.x);
    let var_2 = Struct_1(~countOneBits(max(vec3<u32>(var_1.x, global0.x, global0.x), reverseBits(vec3<u32>(var_1.x, 5801u, var_1.x)))), !vec4<bool>(select(true, true, !var_0.x), true, !func_2(521f, global1[_wgslsmith_index_u32(var_1.x, 17u)]).b.x, true), vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, global0.x, 0u, var_1.x) << (vec4<u32>(var_1.x, var_1.x, global0.x, 1u) % vec4<u32>(32u))), ~vec4<u32>(1863u, global0.x, 25801u, var_1.x) | ~vec4<u32>(19168u, 29636u, var_1.x, global0.x)), var_1.x), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 35626u, var_1.x), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, 5183u, 1u)))));
    let var_3 = _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, -26192i, u_input.a ^ u_input.a, abs(u_input.a)), vec4<i32>(-(~1i), 2147483647i, u_input.a << (~firstLeadingBit(53002u) % 32u), firstLeadingBit(u_input.a)));
    return vec2<bool>(var_2.b.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_1(), vec2<bool>(true, _wgslsmith_f_op_f32(ceil(-357f)) <= _wgslsmith_f_op_f32(f32(-1f) * -622f)), firstLeadingBit(-49416i) == u_input.a);
    global1 = array<Struct_2, 17>();
    let var_1 = ~(~((vec3<u32>(0u, global0.x, 80910u) << (vec3<u32>(global0.x, 0u, global0.x) % vec3<u32>(32u))) << (~vec3<u32>(global0.x, 12802u, global0.x) % vec3<u32>(32u))) | abs(~(~vec3<u32>(global0.x, global0.x, 58283u))));
    let var_2 = !select(all(!vec4<bool>(var_0.x, false, var_0.x, false)), select(global0.x != 17838u, countOneBits(-979i) != (u_input.a << (14560u % 32u)), !var_0.x), var_0.x);
    let var_3 = select(~min(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 0u, global0.x, global0.x), vec4<u32>(global0.x, 0u, var_1.x, var_1.x)), _wgslsmith_dot_vec3_u32(abs(var_1), vec3<u32>(1u, 1u, 1u))), ~(1u ^ _wgslsmith_add_u32(var_1.x, 1u)), true);
    var var_4 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-482f + _wgslsmith_f_op_f32(floor(757f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1814f - 1948f)), ~u_input.a > min(u_input.a, u_input.a)))), Struct_2(~4294967295u << ((global0.x >> (10362u % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-289f, 886f, _wgslsmith_f_op_f32(-998f + _wgslsmith_f_op_f32(min(988f, -431f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -1488f), _wgslsmith_f_op_f32(729f + 862f), func_1().x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(min(1169f, -824f)), -1520f, _wgslsmith_f_op_f32(trunc(122f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1379f, 807f, 326f, 1000f) * vec4<f32>(-823f, -690f, 1126f, 1083f))))), func_4(Struct_1(var_4.d, select(var_4.b, vec4<bool>(true, false, var_0.x, false), true), max(vec2<u32>(14758u, var_4.a.x), global0.yz), min(vec3<u32>(0u, 58967u, var_3), vec3<u32>(var_3, 64061u, var_1.x)))).x)), vec2<u32>(var_4.c.x, reverseBits(~var_4.d.x & countOneBits(var_1.x))), min(~min(_wgslsmith_sub_u32(var_3, 4294967295u), var_1.x), global0.x));
}

