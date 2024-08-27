struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(2147483647i);

var<private> global1: Struct_3;

var<private> global2: array<i32, 3>;

var<private> global3: vec4<i32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<i32> {
    global0 = Struct_3(~43855i);
    global0 = Struct_3(arg_1.d);
    let var_0 = -reverseBits(-arg_2);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.b, -375f)));
    let var_2 = _wgslsmith_div_vec3_i32(arg_2.xyx, vec3<i32>(global2[_wgslsmith_index_u32(~0u, 3u)], ~arg_1.e, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(14429i, 0i, 33828i), var_0.xyz)) | min(i32(-1i) * -2147483647i, ~global0.a)));
    return var_2.zx;
}

fn func_2() -> Struct_1 {
    global0 = Struct_3(max(_wgslsmith_sub_i32(-global0.a, ~(~global2[_wgslsmith_index_u32(2775u, 3u)])), ~(-19896i)));
    global0 = Struct_3(1i);
    global1 = Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(func_3(vec4<i32>(-61489i, global1.a, -2147483647i, global1.a), Struct_1(-1000f, 925f, false, -5582i, global1.a), vec4<i32>(global3.x, 26037i, global3.x, -1i)), _wgslsmith_mod_vec2_i32(global3.ww, firstLeadingBit(vec2<i32>(-1i, 0i)))), _wgslsmith_mult_vec2_i32(global3.xx >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(global1.a, global0.a), global3.yx))));
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(138f * -630f)), _wgslsmith_f_op_f32(f32(-1f) * -1026f), !select(true, true, true), global1.a << (~0u % 32u), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-87773i, global3.x), _wgslsmith_div_i32(global0.a, -1i), func_3(vec4<i32>(global1.a, -1i, 34286i, 2147483647i), Struct_1(-1312f, 571f, false, 2147483647i, global0.a), vec4<i32>(0i, global1.a, global3.x, global1.a)).x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3282f + -653f)), _wgslsmith_f_op_f32(select(-409f, _wgslsmith_f_op_f32(round(186f)), true)), -838f), abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a), ~4294967295u)), Struct_1(-622f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1257f, -1000f) * _wgslsmith_f_op_f32(-1047f * 326f)), true, _wgslsmith_mod_i32(global1.a, -6218i), global2[_wgslsmith_index_u32(19195u, 3u)]), ~(~_wgslsmith_div_u32(4294967295u, u_input.a))), vec3<u32>(u_input.a, firstLeadingBit(29863u), ~_wgslsmith_clamp_u32(reverseBits(u_input.a), u_input.a, u_input.a)));
    var var_1 = var_0.a.d;
    return Struct_1(_wgslsmith_f_op_f32(sign(var_1.a)), -1990f, var_1.c, global2[_wgslsmith_index_u32(14961u, 3u)], 2147483647i);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(arg_3.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_1.a.a, 1661f)), false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2.a.b), arg_3.b))))));
    var var_2 = reverseBits(select(min(vec4<i32>(13863i, arg_3.d.d, var_0.e, arg_3.a.d) | vec4<i32>(global3.x, global0.a, global0.a, arg_2.a.a.e), vec4<i32>(-24979i, arg_2.a.a.e, arg_1.a.e, var_0.e)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a, 3u)], global3.x, global1.a), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.a, arg_3.d.e, 8998i, global1.a), vec4<i32>(arg_1.d.e, -19404i, 12020i, global3.x))), vec4<bool>(any(vec3<bool>(var_0.c, false, false)), arg_2.a.a.c, any(vec2<bool>(arg_2.a.a.c, false)), var_0.c)) >> (firstTrailingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(60803u, u_input.a, 1u, 1u), vec4<u32>(0u, arg_3.c, 1u, 1u)))) % vec4<u32>(32u)));
    let var_3 = arg_2;
    let var_4 = global3.zz ^ -var_2.zx;
    return Struct_1(_wgslsmith_f_op_f32(trunc(-944f)), _wgslsmith_f_op_f32(-arg_2.a.b.x), false, ~(~(-7863i)), global1.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    let var_0 = Struct_3(-(~(~arg_1.d)));
    var var_1 = vec3<bool>(~arg_0.e >= (var_0.a & func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, -673f, -971f))), Struct_2(arg_0, vec3<f32>(arg_0.a, arg_1.a, 192f), 4294967295u, Struct_1(arg_2, 496f, arg_0.c, 1i, arg_1.d), u_input.a), Struct_4(Struct_2(Struct_1(arg_0.b, arg_2, arg_0.c, global2[_wgslsmith_index_u32(u_input.a, 3u)], -38671i), vec3<f32>(arg_2, 608f, -498f), 1u, Struct_1(-647f, -1888f, arg_1.c, -1i, global3.x), u_input.a), vec3<u32>(u_input.a, 1u, 4294967295u)), Struct_2(arg_0, vec3<f32>(1000f, arg_2, arg_1.b), 1u, arg_0, 0u)).e), false, true);
    var_1 = select(vec3<bool>(arg_1.c, any(var_1.yx), true), select(vec3<bool>(true, !(arg_0.c & arg_0.c), false), select(vec3<bool>(true, arg_1.c, arg_1.c), vec3<bool>(var_1.x, false, any(vec2<bool>(false, var_1.x))), arg_1.c), var_1.x), !(!vec3<bool>(true, var_1.x || arg_0.c, arg_1.c)));
    global3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-(i32(-1i) * -2147483647i), 20399i | ~global3.x, max(_wgslsmith_sub_i32(global3.x, global2[_wgslsmith_index_u32(60014u, 3u)]), global0.a), 0i), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_0.a, global2[_wgslsmith_index_u32(u_input.a, 3u)], arg_1.d, 81333i)), vec4<i32>(-1i) * -vec4<i32>(global0.a, 2147483647i, global0.a, 39655i)), vec4<i32>(-var_0.a, global2[_wgslsmith_index_u32(~0u, 3u)], var_0.a, abs(global3.x)) >> (max(~vec4<u32>(u_input.a, 4294967295u, 60724u, u_input.a), reverseBits(vec4<u32>(u_input.a, 8310u, 4294967295u, 2897u))) % vec4<u32>(32u))) << (select(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 28630u, 83026u, 47958u), vec4<u32>(u_input.a, 101402u, 1u, u_input.a)), abs(vec4<u32>(u_input.a, 19360u, u_input.a, u_input.a))), vec4<u32>(~(~u_input.a), select(~u_input.a, _wgslsmith_mult_u32(u_input.a, 6632u), all(var_1.zx)), u_input.a, 19147u), false) % vec4<u32>(32u));
    var_1 = !(!(!vec3<bool>(false, arg_0.c || false, true)));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, arg_2), arg_2), arg_1.b, _wgslsmith_f_op_f32(368f * -199f) < _wgslsmith_f_op_f32(-arg_0.a), -1i, global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, -1990f, 1334f))))), ~u_input.a, func_1(vec3<f32>(_wgslsmith_f_op_f32(-900f * arg_1.b), _wgslsmith_f_op_f32(abs(995f)), arg_2), Struct_2(arg_1, vec3<f32>(383f, arg_1.a, -463f), _wgslsmith_sub_u32(1u, u_input.a), func_1(vec3<f32>(arg_1.a, arg_1.b, -1000f), Struct_2(Struct_1(1838f, arg_0.b, false, var_0.a, global0.a), vec3<f32>(-1291f, 1482f, -284f), u_input.a, Struct_1(1000f, arg_0.a, true, global3.x, global2[_wgslsmith_index_u32(u_input.a, 3u)]), 2392u), Struct_4(Struct_2(arg_1, vec3<f32>(504f, -1008f, arg_1.b), 21917u, Struct_1(1068f, -1099f, var_1.x, -30462i, global3.x), u_input.a), vec3<u32>(74639u, u_input.a, 20085u)), Struct_2(Struct_1(arg_0.b, arg_2, false, -49833i, global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec3<f32>(arg_0.a, 587f, 643f), 4294967295u, arg_1, 19858u)), u_input.a), Struct_4(Struct_2(arg_0, vec3<f32>(arg_0.b, arg_2, -530f), u_input.a, Struct_1(943f, arg_0.a, arg_1.c, global1.a, var_0.a), 41517u), ~vec3<u32>(u_input.a, u_input.a, 77805u)), Struct_2(Struct_1(-1390f, 754f, var_1.x, -1i, arg_1.e), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, 159f, arg_0.b))), abs(64611u), Struct_1(583f, arg_1.b, arg_1.c, global1.a, global0.a), u_input.a)), ~6674u), vec3<u32>(select(1u, countOneBits(_wgslsmith_div_u32(0u, u_input.a)), true), max(66714u << (_wgslsmith_add_u32(4294967295u, u_input.a) % 32u), u_input.a), u_input.a & (1u & (52171u ^ u_input.a))));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_4) -> i32 {
    global3 = _wgslsmith_add_vec4_i32(~abs(_wgslsmith_div_vec4_i32(vec4<i32>(-24003i, -1i, global3.x, -15329i), vec4<i32>(global3.x, -24538i, -13094i, -2147483647i)) >> (abs(vec4<u32>(1u, arg_3.b.x, arg_3.a.e, arg_3.b.x)) % vec4<u32>(32u))), -_wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~global0.a, global3.x, 19131i), -vec4<i32>(2147483647i, 22546i, 0i, global0.a)));
    var var_0 = !select(select(select(vec4<bool>(arg_3.a.d.c, arg_3.a.a.c, arg_3.a.d.c, arg_3.a.a.c), vec4<bool>(arg_3.a.d.c, arg_3.a.a.c, false, arg_3.a.d.c), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_3.a.d.c, true, true, arg_3.a.a.c), true)), select(select(vec4<bool>(false, arg_3.a.a.c, true, false), vec4<bool>(arg_3.a.a.c, arg_3.a.d.c, arg_3.a.a.c, arg_3.a.a.c), false), !vec4<bool>(false, false, arg_3.a.a.c, false), any(vec2<bool>(arg_3.a.a.c, true))), select(select(vec4<bool>(true, arg_3.a.d.c, true, arg_3.a.a.c), vec4<bool>(true, arg_3.a.a.c, arg_3.a.d.c, arg_3.a.a.c), vec4<bool>(false, true, arg_3.a.d.c, true)), vec4<bool>(arg_3.a.a.c, arg_3.a.d.c, true, arg_3.a.d.c), vec4<bool>(arg_3.a.a.c, arg_3.a.a.c, true, false))), vec4<bool>(any(select(vec3<bool>(arg_3.a.a.c, arg_3.a.a.c, arg_3.a.d.c), vec3<bool>(false, arg_3.a.a.c, arg_3.a.d.c), arg_3.a.d.c)), arg_3.a.a.c, func_2().c, all(vec4<bool>(false, arg_3.a.d.c, true, true)) || (arg_3.a.a.c & true)), arg_3.a.a.c | true);
    global3 = firstLeadingBit(select(~vec4<i32>(~1i, arg_3.a.a.e, _wgslsmith_div_i32(global0.a, -2147483647i), 1i), vec4<i32>(_wgslsmith_mod_i32(global0.a, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(arg_3.b.x, 3u)], global2[_wgslsmith_index_u32(arg_3.a.c, 3u)])), -arg_3.a.d.d, arg_3.a.a.d, (i32(-1i) * -8687i) << (u_input.a % 32u)), true));
    var var_1 = arg_3;
    global1 = Struct_3(_wgslsmith_add_i32(arg_3.a.a.d, _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_1.xx), arg_1.yx) << (abs(countOneBits(u_input.a)) % 32u)));
    return ~(_wgslsmith_div_i32(reverseBits(5377i), -global3.x) & 1i) & func_2().d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 3>();
    global3 = vec4<i32>(~func_5(_wgslsmith_f_op_f32(-808f + _wgslsmith_f_op_f32(select(-379f, -163f, true))), vec3<i32>(0i, -47059i ^ global0.a, -1i), _wgslsmith_div_vec3_f32(vec3<f32>(-610f, 237f, 374f), vec3<f32>(130f, -303f, 526f)), func_4(Struct_1(197f, 419f, true, -2147483647i, -32360i), func_1(vec3<f32>(-278f, -1185f, 519f), Struct_2(Struct_1(130f, 1401f, true, -2147483647i, -5306i), vec3<f32>(1167f, -1065f, 1795f), 31346u, Struct_1(-663f, 643f, false, -42783i, global0.a), u_input.a), Struct_4(Struct_2(Struct_1(-1417f, 813f, true, -2147483647i, global1.a), vec3<f32>(1465f, -2819f, 1000f), u_input.a, Struct_1(1910f, 1000f, false, 1i, global0.a), 0u), vec3<u32>(u_input.a, u_input.a, 11691u)), Struct_2(Struct_1(1525f, 1356f, false, global2[_wgslsmith_index_u32(u_input.a, 3u)], 73096i), vec3<f32>(597f, 925f, 862f), u_input.a, Struct_1(869f, 1293f, true, 2147483647i, -33858i), u_input.a)), 944f)), ~_wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(global3.x, -17i, 0i, global3.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(69982u, 3u)], -5595i, global1.a, global3.x), vec4<i32>(2147483647i, 0i, 49199i, -25397i))), -vec4<i32>(2147483647i, 0i, global2[_wgslsmith_index_u32(98821u, 3u)], global2[_wgslsmith_index_u32(u_input.a, 3u)]) & _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 3u)], global1.a, -1i), vec4<i32>(global1.a, -4407i, 0i, 0i))), -func_2().d | -_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.a, -1i, 1i, global3.x), abs(vec4<i32>(0i, 25786i, global3.x, 1i))), ~(~(-1428i | abs(global0.a))));
    var var_0 = _wgslsmith_f_op_f32(step(-108f, _wgslsmith_f_op_f32(sign(-2291f))));
    var var_1 = vec4<i32>(global0.a, 2147483647i, firstLeadingBit(16140i), global3.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(916f * _wgslsmith_f_op_f32(2093f - -775f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-278f, 370f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, abs(_wgslsmith_sub_u32(u_input.a, 0u))), vec4<f32>(_wgslsmith_f_op_f32(step(1159f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(763f, 1023f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-654f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(func_4(Struct_1(-3944f, -1203f, true, global2[_wgslsmith_index_u32(u_input.a, 3u)], var_1.x), Struct_1(-1364f, 860f, false, 28894i, var_1.x), 850f).a.a.b, _wgslsmith_f_op_f32(f32(-1f) * -832f)), _wgslsmith_f_op_f32(-1471f - -2213f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1317f))))), firstLeadingBit(vec2<u32>(u_input.a >> (4294967295u % 32u), 0u) ^ min(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(global3.x, global3.x), -23309i), var_1.x)), _wgslsmith_add_vec2_i32(firstLeadingBit(-(global3.wy << (vec2<u32>(16612u, u_input.a) % vec2<u32>(32u)))), select(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1246u, 3u)], 23299i), vec2<i32>(var_1.x, 27814i)), -var_1.xz, true) << (_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 14415u), vec2<bool>(false, true)), max(vec2<u32>(0u, 65691u), vec2<u32>(0u, 78130u))) % vec2<u32>(32u))));
}

