struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 5>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.a.wyy);
    global4 = array<Struct_1, 5>();
    let var_1 = vec3<i32>(_wgslsmith_add_i32(u_input.c, 16027i), u_input.b, -(~u_input.c) << (_wgslsmith_div_u32(47666u, 4294967295u) % 32u));
    let var_2 = Struct_3(~var_0.zz, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(591f * _wgslsmith_f_op_f32(f32(-1f) * -2866f)), _wgslsmith_f_op_f32(f32(-1f) * -299f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1526f)) - _wgslsmith_f_op_f32(trunc(-1510f))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-494f * 935f), 497f)), _wgslsmith_f_op_f32(min(-928f, _wgslsmith_f_op_f32(f32(-1f) * -516f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-737f - -1111f))), _wgslsmith_f_op_f32(floor(-278f)))));
    let var_3 = 4294967295u;
    return global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(min(var_3, 74284u), _wgslsmith_div_u32(1u, var_2.a.x))) ^ 4294967295u, 5u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    global4 = array<Struct_1, 5>();
    let var_0 = Struct_3(select(vec2<u32>(19782u, 4294967295u), vec2<u32>(~72707u, _wgslsmith_mod_u32(arg_2.x, arg_2.x)), select(global3.xx, vec2<bool>(global3.x, true), global3.yx)), _wgslsmith_f_op_vec2_f32(arg_1.a.zw - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.a.yw, vec2<f32>(912f, 1345f))) - _wgslsmith_f_op_vec2_f32(arg_1.a.yx - arg_1.a.zz))))), global2[_wgslsmith_index_u32(~max(u_input.a.x, 11069u), 5u)]);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-594f - _wgslsmith_f_op_f32(-1739f - 395f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(-180f - -1208f)), var_0.c.a.x))));
    global3 = select(arg_0.ywy, vec3<bool>(true, true, !(global0.x && arg_0.x)), arg_0.ywy);
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(var_0.c.a.yyy));
    return ~var_0.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-arg_1.a);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), ~(abs(~u_input.b) | _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, 0i, -35577i), -vec3<i32>(-30406i, 0i, -61995i))), any(select(!vec3<bool>(global0.x, arg_2.x, false), vec3<bool>(false, false, true), true)) && global3.x, vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-351f))))), _wgslsmith_f_op_f32(trunc(-408f))), u_input.b);
    let var_2 = global4[_wgslsmith_index_u32(~(~arg_0.a.x), 5u)];
    let var_3 = var_1;
    var var_4 = Struct_3(u_input.a.wz | (u_input.a.ww << ((countOneBits(vec2<u32>(4294967295u, 1u)) << (~arg_0.a % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2223f, var_0.x)), vec2<f32>(118f, var_0.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_2.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)))));
    return Struct_3(u_input.a.wx, _wgslsmith_div_vec2_f32(arg_1.a.yz, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(443f - -1264f), _wgslsmith_f_op_f32(step(-1000f, var_1.d.x)))))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1203f, var_2.a.x, arg_1.a.x))))))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    global4 = array<Struct_1, 5>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_4(arg_2, Struct_1(vec4<f32>(arg_0.a.x, 249f, -1427f, arg_0.a.x)), !vec2<bool>(global3.x, false)).c.a)));
    let var_1 = Struct_3(arg_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.a.yy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1291f, arg_0.a.x))), var_0.a.wy))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -195f, _wgslsmith_f_op_f32(round(-648f)), var_0.a.x), vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(min(453f, arg_0.a.x)), var_0.a.x), true))));
    var var_2 = var_1;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -800f))))), _wgslsmith_f_op_f32(sign(335f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_2.c.a.x, -534f)))), arg_2.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x)))))));
    return func_4(Struct_3(var_2.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.a.yw * var_0.a.wy) + vec2<f32>(var_3.a.x, 915f)))), global4[_wgslsmith_index_u32(countOneBits(arg_3), 5u)]), func_4(Struct_3(vec2<u32>(1u, 0u), arg_0.a.yw, func_4(Struct_3(var_2.a, arg_0.a.zy, Struct_1(vec4<f32>(arg_2.b.x, arg_0.a.x, arg_2.c.a.x, var_1.c.a.x))), func_2(), !vec2<bool>(true, global3.x)).c), global2[_wgslsmith_index_u32(25572u, 5u)], global3.zy).c, global3.yz).c;
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = Struct_3(u_input.a.wy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-126f, 734f) * vec2<f32>(-251f, -588f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1117f, -1318f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -246f) + vec2<f32>(-839f, -304f)))))), func_5(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a.xyz), u_input.a.zzx), 5u)], u_input.a.x ^ ~(~89167u), func_4(Struct_3(~vec2<u32>(4294967295u, 17722u), vec2<f32>(1069f, 1380f), func_2()), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(vec4<bool>(global0.x, global0.x, false, false), Struct_1(vec4<f32>(-692f, -1192f, -327f, -524f)), u_input.a.zxx, global0.x), abs(u_input.a.x)), 5u)], vec2<bool>(true, global0.x)), 58041u));
    var_0 = Struct_3(vec2<u32>(0u, ~92668u >> (~u_input.a.x % 32u)), var_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.a.x, var_0.c.a.x, var_0.b.x, -1050f), var_0.c.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, 1215f, 1000f, var_0.b.x) * vec4<f32>(var_0.c.a.x, -115f, var_0.b.x, var_0.c.a.x))))));
    var var_1 = vec4<u32>(0u, abs(var_0.a.x), 51467u, u_input.a.x);
    global2 = array<Struct_1, 5>();
    let var_2 = 83580u;
    return vec4<i32>(-7216i, arg_0.x, ~(firstTrailingBit(_wgslsmith_sub_i32(2147483647i, u_input.c)) >> (~865u % 32u)), -u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(reverseBits(func_1(countOneBits(vec3<i32>(u_input.c, -2147483647i, u_input.c)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1665f * -912f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(489f, 1455f)))), ~(~firstLeadingBit(min(u_input.c, 2147483647i))), global0.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1615f)) - _wgslsmith_div_f32(-702f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_5(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 0u, Struct_3(vec2<u32>(u_input.a.x, u_input.a.x), vec2<f32>(-1467f, 1371f), Struct_1(vec4<f32>(551f, 1362f, -1266f, -1054f))), 0u).a.x) - 467f), _wgslsmith_div_f32(func_5(Struct_1(vec4<f32>(-576f, -1941f, 1601f, 579f)), 6331u, func_4(Struct_3(u_input.a.ww, vec2<f32>(1892f, -1652f), Struct_1(vec4<f32>(-364f, -775f, 1623f, -334f))), global4[_wgslsmith_index_u32(20253u, 5u)], vec2<bool>(global3.x, global0.x)), u_input.a.x).a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-2212f)))))), _wgslsmith_sub_i32(u_input.c, ~countOneBits(_wgslsmith_sub_i32(-2147483647i, var_0.x))));
    let var_2 = _wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    global4 = array<Struct_1, 5>();
    global3 = !select(select(select(!vec3<bool>(global0.x, true, false), vec3<bool>(var_1.c, global3.x, global3.x), false), !select(vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, global3.x, true), vec3<bool>(var_1.c, true, global3.x)), all(vec2<bool>(false, true))), !vec3<bool>(true, any(vec4<bool>(global0.x, false, global0.x, true)), all(vec4<bool>(false, true, var_1.c, var_1.c))), false);
    let var_3 = !all(select(!(!vec3<bool>(false, global3.x, false)), select(vec3<bool>(false, true, false), vec3<bool>(var_1.c, global3.x, true), select(vec3<bool>(true, false, false), vec3<bool>(var_1.c, global3.x, false), true)), global3.x));
    let var_4 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, u_input.a.x, func_4(func_4(Struct_3(vec2<u32>(1u, 23066u) ^ vec2<u32>(u_input.a.x, 56446u), vec2<f32>(-848f, var_1.d.x), Struct_1(vec4<f32>(var_1.a, -1273f, -1809f, var_1.a))), func_2(), select(!var_4.yy, vec2<bool>(false, global0.x), global3.yz)), func_5(func_4(func_4(Struct_3(vec2<u32>(4294967295u, u_input.a.x), vec2<f32>(-1157f, var_1.d.x), global2[_wgslsmith_index_u32(var_2, 5u)]), Struct_1(vec4<f32>(1511f, var_1.a, var_1.a, 2173f)), vec2<bool>(var_4.x, global3.x)), func_4(Struct_3(u_input.a.zy, vec2<f32>(1975f, var_1.d.x), Struct_1(vec4<f32>(-654f, 1441f, var_1.d.x, var_1.d.x))), global4[_wgslsmith_index_u32(u_input.a.x, 5u)], global3.yz).c, !var_4.zy).c, select(10696u, u_input.a.x, false), func_4(func_4(Struct_3(u_input.a.yw, var_1.d.xy, Struct_1(vec4<f32>(1688f, -919f, -739f, var_1.a))), Struct_1(vec4<f32>(1278f, 1037f, -502f, 988f)), vec2<bool>(true, var_4.x)), func_2(), global3.yy), var_2 >> (~0u % 32u)), vec2<bool>(!(var_1.c & false), global3.x)).b.x);
}

