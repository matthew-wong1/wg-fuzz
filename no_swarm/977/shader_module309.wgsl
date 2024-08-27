struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1208f, -422f, -660f, 1273f), vec4<f32>(1503f, -1000f, 934f, -978f), vec4<f32>(-477f, 1000f, -572f, -1134f), vec4<f32>(-1843f, 1750f, 299f, -120f), vec4<f32>(-1000f, 722f, -975f, 389f), vec4<f32>(-1162f, 348f, 499f, -1234f), vec4<f32>(1475f, -169f, 365f, 1000f), vec4<f32>(-1194f, 395f, -709f, -1000f), vec4<f32>(-608f, -1085f, -2853f, -743f), vec4<f32>(192f, 410f, 1006f, -872f), vec4<f32>(-533f, -766f, -1679f, 1000f));

var<private> global2: vec4<i32> = vec4<i32>(1i, 2147483647i, 1i, 0i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, -1815f) * _wgslsmith_f_op_vec2_f32(floor(global0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(global0.a.x, 1858f)))))), ~(~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2343f, -2160f, global0.c) + vec3<f32>(-858f, -1314f, global0.a.x)), vec3<f32>(global0.c, 498f, 127f)))))), _wgslsmith_div_vec2_u32(~arg_1.xw, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 1u), _wgslsmith_mult_vec2_u32(select(arg_1.xx, vec2<u32>(arg_1.x, 13637u), vec2<bool>(true, true)), arg_1.xz))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_1.x, abs(1u), arg_1.x, ~33957u), arg_1));
    var var_1 = _wgslsmith_f_op_f32(min(1013f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(var_0.c.x - 195f), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global0.a.x - 1229f)))))));
    let var_2 = 821f;
    global2 = vec4<i32>(1i, _wgslsmith_add_i32(_wgslsmith_add_i32(~(i32(-1i) * -1i), ~arg_0 | (i32(-1i) * -22926i)), 1i), -7662i, 2147483647i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-489f)))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-342f, _wgslsmith_f_op_f32(global0.c - -1020f)) * _wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-523f - -1132f)), var_0.a.x)));
}

fn func_2(arg_0: vec2<u32>) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(global2.x, vec4<u32>(47269u, 59472u, 16929u, 28358u))), global0.a)))), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2093f, global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-250f)) + _wgslsmith_div_f32(global0.c, global0.c)) - global0.a.x)), arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, true)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), countOneBits(arg_0) & abs(abs(~arg_0)), ~1u);
    var var_1 = -u_input.b >> (_wgslsmith_clamp_vec4_u32(~(~abs(vec4<u32>(var_0.e, var_0.e, var_0.d.x, arg_0.x))), ~vec4<u32>(arg_0.x, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 24079u), vec4<u32>(4294967295u, var_0.d.x, 8039u, arg_0.x)), 1u), select(~vec4<u32>(56765u, 71534u, arg_0.x, arg_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.x, 1u, u_input.a, 55715u), vec4<u32>(u_input.a, 149253u, arg_0.x, u_input.a), vec4<u32>(32024u, 25612u, 9048u, 1u)), vec4<bool>(true, true, true, true)) | vec4<u32>(max(0u, u_input.a), arg_0.x, 39876u, firstLeadingBit(58048u))) % vec4<u32>(32u));
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * var_0.a.x))), _wgslsmith_sub_i32(global0.b, -33411i | abs(firstTrailingBit(global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -173f)))));
    let var_2 = _wgslsmith_clamp_vec2_i32(-(~(-u_input.b.zw)), var_1.yw, global2.zz);
    return 6471u;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = vec2<u32>(63923u & func_2(max(vec2<u32>(arg_0, 1u) >> (vec2<u32>(0u, arg_0) % vec2<u32>(32u)), vec2<u32>(0u, arg_0))), _wgslsmith_mult_u32(arg_0, _wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(45882u), ~arg_0), u_input.a)));
    let var_1 = abs(vec3<i32>(max(-(global0.b >> (0u % 32u)), -u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, global0.b, global2.x, global2.x), select(vec4<i32>(global2.x, global0.b, u_input.b.x, -27699i), u_input.b, vec4<bool>(true, false, true, false))), -58657i));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(global2.x, vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x))).x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = var_1.yz;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, global0.c, global0.c, -1597f)))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-495f, 198f, global0.a.x, -2070f)) * vec4<f32>(global0.c, -574f, -678f, 1000f))))) - global1[_wgslsmith_index_u32(1u, 11u)]);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-313f + -1004f)))), -(33321i | global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    global1 = array<vec4<f32>, 11>();
    var var_0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), vec4<i32>(arg_2, _wgslsmith_div_i32(global2.x, -u_input.b.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, u_input.a)) % 32u), _wgslsmith_sub_i32(select(arg_2, abs(13462i), !arg_1.x), global0.b), arg_2));
    var var_1 = false;
    var_0 = -1i;
    let var_2 = vec4<bool>(any(select(select(vec3<bool>(true, false, true), arg_1, true), !vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(true, arg_1.x, !arg_1.x))), arg_1.x, arg_1.x, any(select(select(!arg_1.zx, !arg_1.yx, vec2<bool>(arg_1.x, arg_1.x)), vec2<bool>(true, false), !select(arg_1.yy, arg_1.yx, false))));
    return Struct_1(func_1(abs(u_input.a)).a, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(16988u, u_input.a), vec2<u32>(u_input.a, 24697u)) & firstLeadingBit(vec2<u32>(0u, 1u)), ~(vec2<u32>(4294967295u, 1u) << (vec2<u32>(u_input.a, 19770u) % vec2<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-195f * global0.a.x))) - func_1(69855u).c), _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-570f * _wgslsmith_f_op_f32(min(2116f, global0.c))))), ~firstTrailingBit(~vec2<u32>(1u, 15099u)), u_input.a);
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(arg_3.b, 11u)], _wgslsmith_f_op_vec4_f32(max(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-142f, -1666f, 1189f, arg_3.c.x)))))));
    global2 = -_wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -4068i, 4624i, -11499i) | vec4<i32>(global2.x, global0.b, global0.b, global0.b), ~u_input.b), vec4<i32>(u_input.b.x, ~abs(u_input.b.x), ~(i32(-1i) * -21678i), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) << ((0u << (1u % 32u)) % 32u)));
    let var_1 = min(vec4<u32>(reverseBits(_wgslsmith_div_u32(~arg_0, u_input.a)), arg_0, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(142778u, arg_0, u_input.a)) << (~vec3<u32>(1u, 14605u, arg_0) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 26482u, u_input.a), select(vec3<u32>(arg_3.e, 3450u, arg_0), vec3<u32>(arg_3.b, u_input.a, arg_3.d.x), vec3<bool>(false, false, true)), vec3<u32>(u_input.a, 1u, arg_3.b))), ~(~_wgslsmith_mult_u32(4294967295u, u_input.a))), vec4<u32>(~(~(~4294967295u)), 4294967295u, 1u, arg_3.e));
    let var_2 = func_1(func_2(vec2<u32>(abs(countOneBits(0u)), 44577u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1608f, arg_2.x, arg_3.a.x) * global1[_wgslsmith_index_u32(arg_3.b, 11u)])))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -912f, arg_2.x, arg_2.x)))))))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + -1053f), _wgslsmith_f_op_f32(max(var_0.x, -1805f)), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.x * -1993f)))))));
    return 1u << (_wgslsmith_clamp_u32(arg_3.d.x, ~((var_1.x ^ 0u) & 20417u), _wgslsmith_div_u32(37495u, ~1u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = ~1u;
    global2 = vec4<i32>(1i, _wgslsmith_div_i32(global2.x, global2.x), -60908i, (_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 69301i, 2147483647i), vec3<i32>(global2.x, 2147483647i, global2.x)) << (~(~u_input.a) % 32u)) & global0.b);
    let var_2 = Struct_1(global0.a, func_5(31194u, global0.a, _wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u | u_input.a), 11u)])), func_4(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 0u), vec4<u32>(63313u, var_0, 58328u, 14815u))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), ~global0.b)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * global0.a.x), _wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(global0.a.x * -356f))), ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 23739u), vec2<u32>(1u, var_0)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0, 1u), ~u_input.a, ~1u), min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 3312u, 0u), vec3<u32>(0u, 4294967295u, u_input.a)), vec3<u32>(1u, 27050u, 4294967295u))), vec3<u32>(1u, var_0, ~(var_0 ^ u_input.a))));
    var var_3 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-700f * global0.c))), -991f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-304f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.c.x)) - var_2.a.x)), _wgslsmith_f_op_vec2_f32(func_3(global0.b, vec4<u32>(var_0, u_input.a, 37079u, var_0) ^ abs(vec4<u32>(4294967295u, 1u, var_2.d.x, var_2.e)))).x));
}

