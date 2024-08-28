struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<bool>(false, false, false), 4294967295u, vec3<bool>(true, false, true), true, 1000f), Struct_2(vec3<bool>(true, true, false), 70079u, vec3<bool>(false, false, true), true, -444f), Struct_2(vec3<bool>(true, true, false), 58322u, vec3<bool>(false, true, false), true, -922f), Struct_2(vec3<bool>(false, true, true), 41501u, vec3<bool>(false, false, false), false, 1020f), Struct_2(vec3<bool>(false, false, true), 0u, vec3<bool>(false, true, false), false, -708f), Struct_2(vec3<bool>(true, false, true), 10545u, vec3<bool>(true, false, false), false, 298f), Struct_2(vec3<bool>(true, true, false), 32852u, vec3<bool>(false, true, true), false, 1635f), Struct_2(vec3<bool>(true, true, true), 1u, vec3<bool>(false, true, true), false, 903f), Struct_2(vec3<bool>(true, false, true), 132719u, vec3<bool>(true, false, true), true, 709f), Struct_2(vec3<bool>(false, false, false), 4294967295u, vec3<bool>(false, false, true), true, 1206f), Struct_2(vec3<bool>(false, true, true), 4294967295u, vec3<bool>(true, false, true), false, 1000f), Struct_2(vec3<bool>(false, true, false), 2433u, vec3<bool>(true, false, true), true, -594f), Struct_2(vec3<bool>(false, true, false), 0u, vec3<bool>(false, true, false), false, 1232f), Struct_2(vec3<bool>(false, true, true), 123488u, vec3<bool>(false, true, true), false, -782f), Struct_2(vec3<bool>(false, true, true), 35975u, vec3<bool>(true, false, true), false, 568f), Struct_2(vec3<bool>(false, true, true), 4294967295u, vec3<bool>(true, false, false), true, -2893f), Struct_2(vec3<bool>(false, true, true), 36462u, vec3<bool>(false, false, false), true, -1511f));

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: f32) -> bool {
    let var_0 = !select(!select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_1.x, false), select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, true, arg_1.x), vec3<bool>(true, true, arg_1.x))), vec3<bool>(!arg_1.x, true, true), !vec3<bool>(all(vec2<bool>(false, false)), true, all(arg_1)));
    var var_1 = _wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(arg_2, arg_2)) >= u_input.a;
    var var_2 = 2147483647i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - 101f)))));
    var_1 = true;
    return true;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    global1 = array<Struct_2, 17>();
    global2 = array<Struct_2, 32>();
    let var_0 = select(arg_1 << (_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 0u, 4294967295u, u_input.a), vec4<u32>(u_input.a, 6641u, u_input.a, u_input.a)), countOneBits(vec4<u32>(0u, u_input.a, u_input.a, 96398u)), vec4<u32>(20855u, 17834u, 4294967295u, 0u)) % vec4<u32>(32u)), u_input.b, !(!(!vec4<bool>(true, arg_3, false, arg_3)))) | -(u_input.b >> (~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 7598u, u_input.a)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -805f)), arg_0.x));
    let var_2 = _wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(u_input.a, 0u, 12088u, u_input.a)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 23274u, 1u, 0u), vec4<u32>(0u, u_input.a, 15879u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 82125u)), ~vec4<u32>(u_input.a, u_input.a, 54000u, u_input.a)))), 0u << ((u_input.a & ~(~21541u)) % 32u));
    return arg_3;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = 112491u;
    let var_1 = vec4<bool>(all(!(!vec4<bool>(true, arg_1, arg_1, arg_1))), false, arg_1, !func_3(vec2<f32>(507f, _wgslsmith_f_op_f32(f32(-1f) * -257f)), u_input.b, -(~u_input.b), func_2(_wgslsmith_f_op_f32(select(2266f, 2404f, false)), vec2<bool>(arg_1, arg_1), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -2281f))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-871f * -592f) + _wgslsmith_f_op_f32(-120f + -696f)))))));
    var_0 = 1u;
    var_0 = min(~_wgslsmith_sub_u32(1u, ~(~u_input.a)), firstLeadingBit(reverseBits(_wgslsmith_clamp_u32(4342u, arg_2.x, 0u)) & 71143u));
    return select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(arg_1, true), var_1.x);
}

fn func_4(arg_0: vec2<bool>) -> Struct_2 {
    global2 = array<Struct_2, 32>();
    var var_0 = arg_0.x;
    let var_1 = vec3<i32>(-u_input.b.x, u_input.b.x << (1u % 32u), u_input.b.x);
    let var_2 = ~firstTrailingBit(var_1.xz);
    global2 = array<Struct_2, 32>();
    return global1[_wgslsmith_index_u32(u_input.a ^ 1u, 17u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = vec3<f32>(166f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1062f - _wgslsmith_f_op_f32(arg_0.e - -553f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1838f)))) + arg_2.e));
    let var_1 = arg_0.a;
    let var_2 = Struct_1(arg_2.e, u_input.b.x >= select(2147483647i, -2147483647i, false), _wgslsmith_mod_vec3_i32(~firstTrailingBit(-u_input.b.yyx), reverseBits(vec3<i32>(u_input.b.x, reverseBits(u_input.b.x), firstTrailingBit(u_input.b.x)))));
    global0 = !(arg_1.x != !(!arg_2.d));
    var_0 = vec3<f32>(func_4(select(select(arg_2.a.yy, vec2<bool>(arg_1.x, arg_2.a.x), select(vec2<bool>(false, arg_2.a.x), arg_1.zx, vec2<bool>(var_2.b, var_2.b))), !arg_0.c.zx, arg_2.a.yz)).e, arg_0.e, _wgslsmith_f_op_f32(arg_0.e * var_0.x));
    return !select(vec3<bool>(func_3(_wgslsmith_f_op_vec2_f32(step(var_0.xz, var_0.yz)), firstLeadingBit(vec4<i32>(-16914i, 0i, var_2.c.x, u_input.b.x)), u_input.b >> (vec4<u32>(74642u, 6431u, arg_0.b, 1u) % vec4<u32>(32u)), arg_1.x), func_3(var_0.yz, reverseBits(vec4<i32>(50265i, u_input.b.x, var_2.c.x, -48957i)), firstLeadingBit(vec4<i32>(var_2.c.x, -2147483647i, u_input.b.x, 1i)), true), true), arg_2.c, vec3<bool>(select(false, true, func_1(2019u, false, vec2<u32>(u_input.a, 34429u)).x), arg_2.d, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(851f)), !all(vec4<bool>(true, false, true, true)) && true, ~(-(~vec3<i32>(-1i, u_input.b.x, u_input.b.x))));
    var var_1 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(29903u, u_input.a) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(12815u, 44067u)), ~vec2<u32>(1u, 1u)), ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(35077u, 4294967295u), ~vec2<u32>(0u, u_input.a))));
    global0 = all(!func_5(func_4(func_1(var_1.x, false, vec2<u32>(0u, var_1.x))), select(!vec3<bool>(var_0.b, var_0.b, false), !vec3<bool>(true, var_0.b, var_0.b), false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(9532u, u_input.a), vec2<u32>(var_1.x, u_input.a), vec2<bool>(var_0.b, true)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, u_input.a), vec2<u32>(0u, u_input.a))), 32u)]));
    let var_2 = -665f;
    global2 = array<Struct_2, 32>();
    global0 = true;
    let var_3 = _wgslsmith_sub_u32(~0u, ~u_input.a) != _wgslsmith_dot_vec4_u32(firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 0u, 1u, 6279u), vec4<u32>(var_1.x, u_input.a, u_input.a, 1u))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 67405u, 1u, var_1.x), vec4<u32>(1u, 9049u, var_1.x, 4294967295u)), vec4<u32>(u_input.a, 15222u, var_1.x, 1u), ~vec4<u32>(var_1.x, var_1.x, 16622u, var_1.x)));
    global1 = array<Struct_2, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1030f, var_0.a, var_0.a, -232f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1765f, var_2, var_2, var_0.a) + vec4<f32>(-394f, 1358f, 531f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, -1250f, -1421f, var_0.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-546f, 409f, var_0.a, var_2) - vec4<f32>(-1018f, var_0.a, -1387f, var_2))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1000f, var_2, 693f)))), _wgslsmith_f_op_f32(-func_4(!func_4(vec2<bool>(false, false)).c.yx).e), ((~vec4<u32>(var_1.x, 1u, u_input.a, u_input.a) ^ ~vec4<u32>(66266u, 4294967295u, 0u, var_1.x)) | ~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))) >> ((firstLeadingBit(~vec4<u32>(var_1.x, 4294967295u, var_1.x, u_input.a)) | _wgslsmith_add_vec4_u32(select(vec4<u32>(var_1.x, var_1.x, 2867u, u_input.a), vec4<u32>(10700u, var_1.x, u_input.a, u_input.a), vec4<bool>(false, var_0.b, var_0.b, var_3)), vec4<u32>(40334u, 92342u, var_1.x, u_input.a) & vec4<u32>(4294967295u, u_input.a, 60698u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_div_u32(18377u, ~u_input.a), select(~firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, 10173u, u_input.a)), max(vec4<u32>(0u, firstLeadingBit(var_1.x), func_4(vec2<bool>(false, true)).b, u_input.a), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 71773u, 55226u, var_1.x), vec4<u32>(u_input.a, var_1.x, var_1.x, 6193u)), ~vec4<u32>(u_input.a, u_input.a, var_1.x, 23047u))), vec4<bool>(!select(var_3, true, var_0.b), !var_0.b, var_0.b, var_3)));
}

