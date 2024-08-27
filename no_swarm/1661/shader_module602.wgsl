struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(2092f, -1144f, 1000f), vec3<f32>(231f, 890f, -568f), vec3<f32>(1000f, 1735f, 163f), vec3<f32>(-938f, -314f, -1773f), vec3<f32>(1119f, -761f, -1000f), vec3<f32>(1200f, -1823f, 1145f), vec3<f32>(-893f, 669f, -764f), vec3<f32>(-716f, -837f, 836f), vec3<f32>(339f, 653f, -1000f), vec3<f32>(349f, -1059f, -440f), vec3<f32>(735f, -1025f, 384f), vec3<f32>(-1879f, 125f, 1430f), vec3<f32>(-899f, -553f, 1992f), vec3<f32>(-673f, -334f, 508f), vec3<f32>(979f, -448f, 307f), vec3<f32>(1289f, 1282f, 173f), vec3<f32>(-2308f, 1000f, -560f), vec3<f32>(319f, -1465f, 214f), vec3<f32>(2227f, -1282f, 700f), vec3<f32>(-446f, -1077f, -534f), vec3<f32>(-498f, -1153f, -1079f), vec3<f32>(-116f, -802f, 363f));

var<private> global2: Struct_4 = Struct_4(vec3<bool>(false, false, true), vec4<bool>(false, false, true, false), vec2<bool>(false, true), 1749f);

var<private> global3: array<vec2<bool>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> vec3<u32> {
    let var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4207u), _wgslsmith_div_vec2_u32(u_input.c.zw & vec2<u32>(9872u, arg_0.d.d), u_input.b.zz >> (vec2<u32>(63876u, u_input.b.x) % vec2<u32>(32u))) >> (~(vec2<u32>(u_input.b.x, arg_1) | u_input.b.yx) % vec2<u32>(32u))), 8u)];
    global2 = Struct_4(select(global2.b.wzz, global2.a, vec3<bool>(arg_0.a.e.x, select(global2.c.x, true, var_0.x) || true, true)), vec4<bool>(true, true, all(!global2.a), arg_1 != 31299u), !global3[_wgslsmith_index_u32(~((3543u << (u_input.a % 32u)) << (~1u % 32u)), 8u)], _wgslsmith_f_op_f32(-global2.d));
    global0 = -19252i;
    var var_1 = var_0.x;
    let var_2 = 0i;
    return vec3<u32>(arg_1, arg_0.c.c.a, arg_1);
}

fn func_3(arg_0: u32) -> bool {
    global2 = Struct_4(global2.a, select(!(!vec4<bool>(false, global2.a.x, global2.a.x, global2.c.x)), vec4<bool>(true, select(global2.c.x, global2.c.x, true), true, all(select(global2.a, vec3<bool>(false, false, global2.c.x), true))), vec4<bool>(false, false, global2.b.x, arg_0 > _wgslsmith_clamp_u32(0u, 1u, 40178u))), select(global3[_wgslsmith_index_u32(u_input.a, 8u)], vec2<bool>(true, global2.c.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - -539f)));
    global2 = Struct_4(global2.a, vec4<bool>(any(select(vec4<bool>(false, false, global2.a.x, true), vec4<bool>(true, true, true, global2.c.x), false & global2.b.x)), global2.a.x, true | !global2.a.x, select(true, false, any(!vec3<bool>(global2.a.x, true, true)))), select(vec2<bool>(!global2.b.x, false), select(global2.c, global2.b.ww, true), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(-1212f + _wgslsmith_f_op_f32(ceil(1000f)))))));
    let var_0 = Struct_3(Struct_1(~0u, ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, arg_0, 4294967295u), ~u_input.c), ~vec2<u32>(~79354u, 4294967295u), 0u, global3[_wgslsmith_index_u32(arg_0, 8u)]), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-511f, 1000f, global2.d, 318f))), vec4<f32>(global2.d, 804f, global2.d, 507f))))), 26124u, Struct_1(_wgslsmith_div_u32(18973u, reverseBits(1u)), u_input.c, u_input.b.zy, 1u ^ arg_0, !(!global3[_wgslsmith_index_u32(20507u, 8u)])), 63095u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1570f) * -753f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, -274f, global2.d, global2.d)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1334f, 1762f, -693f), vec4<f32>(358f, 1000f, global2.d, global2.d), vec4<bool>(true, global2.c.x, true, false))))), abs(arg_0) | arg_0, Struct_1(0u, abs(u_input.c), _wgslsmith_mod_vec2_u32(u_input.b.zy, vec2<u32>(arg_0, arg_0)) ^ (u_input.c.ww & vec2<u32>(4294967295u, arg_0)), _wgslsmith_clamp_u32(17710u, 1u, 20422u) ^ ~20715u, global2.a.zx), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0, 40081u), u_input.b.xx), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(global2.d * global2.d)), _wgslsmith_f_op_f32(-global2.d)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.d, global2.d, global2.d, global2.d), vec4<f32>(global2.d, -193f, global2.d, global2.d), global2.b))))), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, 0u, arg_0, 43981u)) ^ 4294967295u), Struct_1(~_wgslsmith_mult_u32(arg_0, 12786u), u_input.c, u_input.b.zx, u_input.a, global2.a.yx), _wgslsmith_mod_u32(0u, countOneBits(~arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f))))));
    let var_1 = ~vec2<u32>(4294967295u, 36679u);
    global2 = Struct_4(select(!(!select(global2.a, vec3<bool>(true, true, true), var_0.b.c.e.x)), global2.a, vec3<bool>(var_0.c.c.e.x, true | !global2.b.x, true)), global2.b, !global3[_wgslsmith_index_u32(7643u, 8u)], 1000f);
    return global2.d > 347f;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = min(arg_0.www >> (~_wgslsmith_sub_vec3_u32(abs(arg_2.b.ywz), ~vec3<u32>(42675u, 1u, u_input.a)) % vec3<u32>(32u)), ~select(arg_2.b.xyx, func_2(Struct_3(arg_2, Struct_2(vec4<f32>(-1309f, global2.d, global2.d, global2.d), arg_2.d, arg_2, u_input.b.x, -1772f), Struct_2(vec4<f32>(global2.d, -1000f, -816f, 1000f), 33413u, arg_2, 0u, -444f), Struct_2(vec4<f32>(-1385f, 1000f, 987f, global2.d), 1u, Struct_1(0u, u_input.c, vec2<u32>(arg_2.c.x, 55304u), 12298u, vec2<bool>(true, false)), arg_2.b.x, global2.d)), arg_1 >> (4294967295u % 32u)), global2.b.wyz));
    global1 = array<vec3<f32>, 22>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2775f, global2.d));
    var var_2 = func_3(5220u);
    var_1 = _wgslsmith_f_op_f32(-609f * global2.d);
    return _wgslsmith_mult_vec3_i32(-(~vec3<i32>(1i, 1i, _wgslsmith_mod_i32(11335i, -1i))), _wgslsmith_clamp_vec3_i32(max(select(-vec3<i32>(-33581i, -49107i, 63178i), reverseBits(vec3<i32>(2147483647i, 0i, -2147483647i)), global2.b.x), select(vec3<i32>(469i, -2147483647i, -1i), vec3<i32>(1i, 1i, 1i), !global2.a)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-1i, 1i, -1i), vec3<i32>(1i, -2147483647i, -13020i), true), ~vec3<i32>(490i, 38075i, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(-21128i, 40333i, 23648i), vec3<i32>(-11477i, 39534i, -4716i))), ~(~vec3<i32>(2147483647i, 1i, 0i))), select(vec3<i32>(1i, 1i, 1i), ~abs(vec3<i32>(2147483647i, -4943i, 2147483647i)), func_2(Struct_3(Struct_1(arg_2.d, vec4<u32>(arg_1, 0u, 4294967295u, arg_2.b.x), arg_0.zz, 10828u, vec2<bool>(global2.c.x, arg_2.e.x)), Struct_2(vec4<f32>(-1000f, global2.d, -183f, 428f), 18695u, Struct_1(u_input.b.x, vec4<u32>(14735u, 59617u, arg_1, u_input.a), u_input.c.xw, 42848u, global2.b.xz), arg_2.b.x, global2.d), Struct_2(vec4<f32>(113f, global2.d, global2.d, global2.d), arg_0.x, arg_2, 0u, global2.d), Struct_2(vec4<f32>(762f, -119f, 546f, 1147f), arg_1, Struct_1(arg_0.x, arg_2.b, var_0.xz, arg_2.c.x, arg_2.e), arg_0.x, global2.d)), 45535u).x >= ~arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(-(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-46464i, -2147483647i, 1i), -vec3<i32>(-1i, 780i, 0i), vec3<i32>(1i, -52848i, -27055i) << (u_input.b % vec3<u32>(32u))) >> (u_input.c.yyy % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, 1i, 1i) ^ func_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a), u_input.a, Struct_1(0u, vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x), vec2<u32>(1u, u_input.a), 98142u, global2.a.yy))), abs(firstTrailingBit(~vec3<i32>(2147483647i, 5628i, 7415i)))), global2.b.x);
    var_0 = -(abs(~(vec3<i32>(var_0.x, -22296i, var_0.x) ^ vec3<i32>(36973i, -547i, var_0.x))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.c.yz), 49999u, ~_wgslsmith_sub_u32(28827u, 0u)) % vec3<u32>(32u)));
    var var_1 = global2.a;
    global3 = array<vec2<bool>, 8>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.d)) + -1773f), -131f));
    var var_3 = var_0.x;
    global1 = array<vec3<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(countOneBits(countOneBits(reverseBits(8210u))), ~(~(~u_input.a)), u_input.a));
}

