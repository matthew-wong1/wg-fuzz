struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 8>;

var<private> global2: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(395f, 270f, -2527f), vec3<f32>(1033f, -607f, -1002f), vec3<f32>(-100f, -179f, 673f), vec3<f32>(-133f, -296f, -1096f), vec3<f32>(-400f, 226f, 590f), vec3<f32>(225f, 672f, 604f), vec3<f32>(-359f, -452f, -219f), vec3<f32>(-892f, 611f, -1429f), vec3<f32>(-2282f, 108f, 973f), vec3<f32>(-285f, -977f, 440f), vec3<f32>(1000f, -291f, -532f), vec3<f32>(235f, -846f, 861f), vec3<f32>(-119f, 793f, 1204f), vec3<f32>(-764f, 1314f, -1823f), vec3<f32>(-187f, -801f, -1000f), vec3<f32>(405f, -1626f, -1775f), vec3<f32>(1818f, -857f, -999f), vec3<f32>(-383f, -122f, 149f), vec3<f32>(-1022f, 1000f, -237f), vec3<f32>(-364f, -448f, -327f), vec3<f32>(-104f, 867f, -1085f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_5) -> bool {
    let var_0 = Struct_3(~58173i, u_input.a, !vec3<bool>(true, all(vec4<bool>(false, false, arg_2.b, global1[_wgslsmith_index_u32(4294967295u, 8u)])), any(select(vec4<bool>(false, global0.d, arg_1.a.x, false), vec4<bool>(arg_3.a.x, true, global1[_wgslsmith_index_u32(1u, 8u)], false), global1[_wgslsmith_index_u32(1u, 8u)]))), Struct_2(34109i, abs(-1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(33952u, 1u)) % 32u)), Struct_1(~0u, abs(~u_input.b), 297u, select(vec4<bool>(global1[_wgslsmith_index_u32(4138u, 8u)], true, true, arg_3.b), !vec4<bool>(global0.d, arg_3.b, arg_3.b, arg_2.b), true), -1000f), !vec4<bool>(true, global0.d, true, true)), select(global0.b, vec3<i32>(-1i) * -select(global0.c, vec3<i32>(u_input.a, u_input.b, arg_0.x), global1[_wgslsmith_index_u32(81470u, 8u)]), vec3<bool>(all(!vec2<bool>(true, arg_3.a.x)), arg_3.a.x, true)));
    let var_1 = reverseBits(max(~(~vec4<u32>(1u, var_0.d.c.a, var_0.d.c.c, 27058u)), ~vec4<u32>(0u, max(var_0.d.c.c, 50692u), var_0.d.c.c, var_0.d.c.a)));
    let var_2 = !vec3<bool>(any(!var_0.d.c.d) | !(global0.c.x <= 4326i), any(vec2<bool>(arg_3.b, false)), any(arg_2.a));
    global2 = array<vec3<f32>, 21>();
    return false;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_5) -> Struct_2 {
    let var_0 = !select(!vec4<bool>(func_3(vec4<i32>(2147483647i, arg_2, u_input.a, u_input.a), Struct_5(vec2<bool>(false, false), arg_3.b), Struct_5(vec2<bool>(arg_3.a.x, true), global0.d), arg_3), true, true, true), select(!vec4<bool>(global0.d, false, arg_0, true), vec4<bool>(!arg_3.a.x, all(vec2<bool>(arg_3.a.x, false)), global1[_wgslsmith_index_u32(4294967295u, 8u)], select(arg_3.b, global1[_wgslsmith_index_u32(1u, 8u)], false)), true), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], true, false, global1[_wgslsmith_index_u32(27271u, 8u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(31408u, 8u)], global0.d, global0.d), vec4<bool>(global0.d, arg_3.a.x, true, arg_0)), select(vec4<bool>(true, global0.d, global1[_wgslsmith_index_u32(35721u, 8u)], true), vec4<bool>(false, true, false, true), any(vec3<bool>(arg_0, true, global0.d))), !(global1[_wgslsmith_index_u32(1u, 8u)] || true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, -247f)), vec2<f32>(839f, 1333f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1240f, 539f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1568f, -250f)))))))));
    var var_2 = !select(vec2<bool>(all(!var_0.zzz), arg_3.b), vec2<bool>(true, true), select(var_0.xx, select(vec2<bool>(false, arg_3.a.x), !var_0.yy, select(arg_3.a, var_0.wx, global0.d)), true));
    let var_3 = Struct_4(_wgslsmith_div_i32(34334i, i32(-1i) * -2147483647i), -(arg_1.xzw << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(~arg_1.wyy, -select(arg_1.wyw, vec3<i32>(2147483647i, 42501i, arg_2), !var_2.x)), all(!var_0.yy) && true, -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-11203i, u_input.a, arg_2), arg_1.ywx), min(arg_1.yyw, vec3<i32>(40294i, arg_2, global0.a))) >> (vec3<u32>(abs(_wgslsmith_clamp_u32(4294967295u, 99865u, 712u)), 1u, select(4294967295u, 83269u, false) & countOneBits(29219u)) % vec3<u32>(32u)));
    return Struct_2(-max(countOneBits(_wgslsmith_mult_i32(0i, 1i)), ~(~(-47376i))), _wgslsmith_dot_vec3_i32(firstLeadingBit(max(var_3.c, vec3<i32>(global0.b.x, 0i, u_input.b))), vec3<i32>(arg_2, ~(-1i), ~firstTrailingBit(-1i))), Struct_1(4294967295u, 1i, reverseBits(22665u), vec4<bool>(all(vec2<bool>(true, var_3.d)), true, !(!global0.d), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-255f, _wgslsmith_f_op_f32(trunc(-1000f)), all(vec4<bool>(var_3.d, true, global1[_wgslsmith_index_u32(28889u, 8u)], global0.d))))))), !var_0);
}

fn func_4(arg_0: Struct_2) -> i32 {
    global2 = array<vec3<f32>, 21>();
    var var_0 = select(vec4<bool>(true, global0.d, !(!(arg_0.c.d.x && false)), any(!(!arg_0.c.d.xy))), arg_0.d, global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c.a, 0u, 68131u), abs(vec3<u32>(4294967295u, 0u, arg_0.c.a)))), 8u)]);
    global0 = Struct_4(firstLeadingBit(func_2(var_0.x, firstLeadingBit(max(vec4<i32>(global0.b.x, arg_0.a, -1i, u_input.a), vec4<i32>(10786i, 2147483647i, -1i, -43990i))), -_wgslsmith_dot_vec3_i32(global0.c, vec3<i32>(u_input.b, global0.e.x, -3002i)), Struct_5(vec2<bool>(var_0.x, global0.d), true)).c.b), abs(vec3<i32>(~max(u_input.a, global0.e.x), global0.b.x, 5118i)), global0.e, true, global0.c);
    let var_1 = false;
    let var_2 = Struct_4(global0.e.x >> (countOneBits(39467u) % 32u), max(vec3<i32>(1i, ~global0.e.x, u_input.b), ~select(global0.b, global0.b, true)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-countOneBits(global0.e), select(global0.b, vec3<i32>(-1i, u_input.a, -2147483647i), vec3<bool>(false, global0.d, global1[_wgslsmith_index_u32(4294967295u, 8u)])) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global0.b.x, global0.e.x), vec3<i32>(-35283i, u_input.a, u_input.b))), ~global0.c), true, -((-global0.c ^ abs(global0.e)) << (vec3<u32>(~arg_0.c.a, 1u, abs(arg_0.c.c)) % vec3<u32>(32u))));
    return var_2.b.x;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_4(arg_1.x, vec3<i32>(2147483647i, func_4(func_2(global1[_wgslsmith_index_u32(arg_0.d.c.c, 8u)], reverseBits(vec4<i32>(u_input.a, 1589i, -1i, 2147483647i)), min(arg_1.x, arg_1.x), Struct_5(arg_0.d.c.d.xw, global1[_wgslsmith_index_u32(arg_0.d.c.c, 8u)]))), 1i), arg_1, true, vec3<i32>(-(~arg_1.x), 1i, u_input.a));
    let var_1 = u_input.a;
    global2 = array<vec3<f32>, 21>();
    var var_2 = !(!(~select(arg_0.d.c.a, arg_0.d.c.c, true) < select(_wgslsmith_mod_u32(arg_0.d.c.a, arg_0.d.c.c), firstLeadingBit(11205u), false | global1[_wgslsmith_index_u32(1u, 8u)])));
    var var_3 = Struct_2(arg_1.x, _wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(arg_0.e.x, u_input.a)), countOneBits(countOneBits(vec2<i32>(1i, -2147483647i)))), Struct_1(0u, 5626i, max(arg_0.d.c.c, arg_0.d.c.c >> (~11646u % 32u)), arg_0.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.c.e + _wgslsmith_f_op_f32(-arg_0.d.c.e)) + arg_0.d.c.e)), vec4<bool>(global1[_wgslsmith_index_u32(~arg_0.d.c.a, 8u)], true, 31522u <= _wgslsmith_mult_u32(0u, ~arg_0.d.c.a), true));
    return arg_0.d.c;
}

fn func_1() -> i32 {
    var var_0 = 2147483647i;
    let var_1 = true;
    let var_2 = Struct_5(!(!(!select(vec2<bool>(var_1, global1[_wgslsmith_index_u32(41760u, 8u)]), vec2<bool>(false, true), vec2<bool>(var_1, var_1)))), false);
    let var_3 = abs(countOneBits(countOneBits(select(abs(vec4<u32>(26411u, 4294967295u, 1u, 976u)), ~vec4<u32>(33407u, 1u, 4294967295u, 4294967295u), any(vec3<bool>(true, false, var_2.a.x))))));
    let var_4 = Struct_2(16157i, u_input.b, func_5(Struct_3(global0.b.x | -15454i, func_4(func_2(global0.d, vec4<i32>(u_input.a, -48953i, u_input.b, global0.a), 2147483647i, Struct_5(var_2.a, var_1))), vec3<bool>(func_2(var_2.b, vec4<i32>(24401i, u_input.a, u_input.a, 2147483647i), 22261i, Struct_5(var_2.a, global0.d)).d.x, global0.d, true), func_2(false, vec4<i32>(58322i, -13239i, -2147483647i, global0.e.x) ^ vec4<i32>(u_input.b, global0.b.x, global0.b.x, global0.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -1i, global0.c.x), vec4<i32>(-2147483647i, -26685i, -1i, 13927i)), var_2), ~select(global0.e, global0.b, false)), _wgslsmith_clamp_vec3_i32(global0.c, ~(-vec3<i32>(-6193i, global0.e.x, -53271i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -4731i), reverseBits(global0.b)))), !select(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], false, var_2.a.x, false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_3.x, 8u)], global1[_wgslsmith_index_u32(19593u, 8u)], global0.d), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(var_3.x, 8u)])), vec4<bool>(all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 8u)], global0.d)), true, global0.d, var_2.b), true));
    return -(~countOneBits(firstLeadingBit(global0.c.x))) << (_wgslsmith_add_u32(~(~1u), abs(func_2(var_2.b, vec4<i32>(u_input.a, 16996i, var_4.a, 0i), -2147483647i, var_2).c.a << (0u % 32u))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1() >= firstTrailingBit(-2147483647i);
    let var_1 = vec2<u32>(1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~22719u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(380f, 959f) + vec2<f32>(243f, 394f)))), vec2<f32>(-563f, _wgslsmith_f_op_f32(sign(-161f))))));
}

