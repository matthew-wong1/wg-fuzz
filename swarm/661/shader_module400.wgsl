struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

var<private> global1: array<Struct_2, 10>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32) -> vec2<bool> {
    let var_0 = ~(~u_input.b);
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 10u)];
    global1 = array<Struct_2, 10>();
    var var_2 = -8388i;
    let var_3 = Struct_1(vec2<i32>(-1i) * -(~u_input.a.wy), vec4<u32>(~21052u, var_0, ~min(u_input.b, u_input.b), ~max(25467u, u_input.b)) & _wgslsmith_mod_vec4_u32((vec4<u32>(var_0, 1u, 0u, u_input.b) & vec4<u32>(u_input.b, var_0, 0u, 1u)) & ~vec4<u32>(4294967295u, 1u, 1u, 31876u), ~firstTrailingBit(vec4<u32>(var_0, u_input.b, 0u, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1212f, -1672f, 767f, 1910f) * vec4<f32>(-573f, 1075f, -777f, -126f))))), false);
    return !select(!vec2<bool>(!var_1.a.x, false), global2.xy, (1u != var_0) && false);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(arg_1.b.x, arg_1.b.x);
    var var_1 = vec2<bool>(arg_1.d, all(select(!(!arg_3), vec3<bool>(true, arg_0, all(vec2<bool>(true, arg_3.x))), select(select(global0[_wgslsmith_index_u32(4294967295u, 26u)], vec3<bool>(false, true, false), arg_3), vec3<bool>(arg_3.x, arg_0, false), arg_1.b.x > 4294967295u))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.wy) * arg_1.c.zx)), arg_1.c.zx);
    var_1 = select(select(!vec2<bool>(true, var_1.x), !(!(!arg_2.a.xw)), vec2<bool>(true, any(vec3<bool>(var_1.x, arg_1.d, true)))), vec2<bool>(!global2.x, all(!arg_3)), func_3(1i >= _wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_1.a.x, -5454i, u_input.a.x), u_input.a.yyw), countOneBits(vec3<i32>(-24865i, -2147483647i, u_input.a.x))), !((arg_1.a.x & -86713i) == (i32(-1i) * -2749i)), 2147483647i));
    var var_3 = ~_wgslsmith_dot_vec2_i32(u_input.a.zz, arg_1.a);
    return Struct_1(vec2<i32>(select(u_input.a.x, arg_1.a.x, !global2.x), u_input.a.x), arg_1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c + arg_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(arg_1.c)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -744f), _wgslsmith_f_op_f32(select(arg_1.c.x, var_2.x, false)), _wgslsmith_f_op_f32(var_2.x * -1551f)))), !((-790f > _wgslsmith_f_op_f32(879f + arg_1.c.x)) && arg_1.d));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = vec4<bool>(arg_1.d, false, global2.x, func_2(true, Struct_1(vec2<i32>(arg_1.a.x, u_input.a.x), vec4<u32>(arg_2.x, 31378u, u_input.b, arg_1.b.x), vec4<f32>(1029f, arg_1.c.x, 180f, arg_1.c.x), all(vec4<bool>(arg_1.d, false, global2.x, true))), Struct_2(vec4<bool>(arg_1.d, false, arg_1.d, true)), vec3<bool>(true, true, true)).a.x < (i32(-1i) * -5376i));
    let var_1 = Struct_3(func_2(global2.x, func_2(arg_1.d || global2.x, arg_1, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, arg_2.x), 10u)], !(!var_0.wyw)), Struct_2(!select(var_0, vec4<bool>(true, global2.x, false, arg_1.d), false)), select(var_0.zxy, var_0.ywx, global2.x)), Struct_1(~arg_1.a, ~arg_1.b, _wgslsmith_f_op_vec4_f32(sign(func_2(!arg_1.d, arg_1, Struct_2(var_0), select(vec3<bool>(arg_1.d, true, true), var_0.zwx, global0[_wgslsmith_index_u32(1u, 26u)])).c)), false == var_0.x), Struct_2(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1.d, global2.x, var_0.x, false), vec4<bool>(arg_1.d, global2.x, var_0.x, true)), select(vec4<bool>(arg_1.d, arg_1.d, true, false), var_0, true), var_0), !var_0, select(vec4<bool>(true, false, false, true), var_0, var_0))));
    global0 = array<vec3<bool>, 26>();
    let var_2 = Struct_4(Struct_2(var_1.c.a));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.x)), arg_1.c.x, _wgslsmith_f_op_f32(floor(var_1.b.c.x))))))));
    return var_1.c;
}

fn func_1() -> Struct_3 {
    var var_0 = firstTrailingBit(vec3<u32>(u_input.b << (119468u % 32u), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.b, 45624u, u_input.b)), vec3<u32>(max(0u, 0u), ~1u, reverseBits(4294967295u))), 1u));
    let var_1 = func_4(vec3<u32>(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 24876u, 0u, u_input.b), ~vec4<u32>(u_input.b, 0u, 0u, 35527u))), 68795u, ~21705u), func_2(!global2.x, Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -6513i), u_input.a.yz >> (var_0.zx % vec2<u32>(32u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.x, 4294967295u, u_input.b), vec4<u32>(var_0.x, var_0.x, 0u, 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 1338f), 1f, -254f, 1000f), global2.x), global1[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(11783u, var_0.x), u_input.b), 26u)]), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.zz), u_input.b) & select(func_2(global2.x, func_2(true, Struct_1(u_input.a.xw, vec4<u32>(u_input.b, 59630u, 3278u, u_input.b), vec4<f32>(-879f, -922f, -670f, 210f), true), Struct_2(vec4<bool>(false, global2.x, global2.x, global2.x)), vec3<bool>(true, false, false)), Struct_2(vec4<bool>(global2.x, false, global2.x, false)), !vec3<bool>(global2.x, true, global2.x)).b.zz, ~(var_0.yz >> (var_0.zy % vec2<u32>(32u))), vec2<bool>(false, false)));
    let var_2 = Struct_2(!var_1.a);
    var var_3 = -1i;
    var var_4 = false;
    return Struct_3(Struct_1(-vec2<i32>(-37494i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -8815i), u_input.a.wz)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(78027u, 0u, u_input.b, var_0.x), vec4<u32>(u_input.b, var_0.x, 4294967295u, var_0.x) ^ vec4<u32>(var_0.x, 0u, 4294967295u, var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-156f, -912f, -167f, 608f))))), var_1.a.x), func_2(global2.x, func_2(false, Struct_1(countOneBits(vec2<i32>(19346i, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(var_0.x, u_input.b, u_input.b, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(554f, -114f, 587f, -360f)), all(var_1.a)), var_1, select(!var_1.a.wxz, vec3<bool>(var_1.a.x, true, false), global2.x)), var_1, vec3<bool>(var_1.a.x, var_2.a.x, !all(vec4<bool>(var_1.a.x, false, false, true)))), func_4(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, var_0.x, 1u), vec3<u32>(abs(u_input.b), 33663u, _wgslsmith_div_u32(4294967295u, 4294967295u))), Struct_1(u_input.a.yw, (vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u) & vec4<u32>(3247u, u_input.b, 4294967295u, 0u)) >> (vec4<u32>(var_0.x, 63351u, var_0.x, var_0.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 598f, 780f, -343f), vec4<f32>(995f, 402f, 1000f, 427f))))), true), abs(var_0.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 26>();
    var var_0 = func_1();
    var_0 = Struct_3(func_2(true, func_2(var_0.b.d, Struct_1(countOneBits(var_0.b.a), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, var_0.a.b.x), vec4<u32>(45384u, var_0.b.b.x, var_0.b.b.x, 0u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c.x, var_0.b.c.x, -1935f, var_0.a.c.x) - vec4<f32>(var_0.a.c.x, var_0.b.c.x, -1157f, var_0.b.c.x)), false), global1[_wgslsmith_index_u32(~(~u_input.b), 10u)], select(var_0.c.a.ywx, !var_0.c.a.xww, global0[_wgslsmith_index_u32(79453u, 26u)])), func_4(vec3<u32>(~5712u, min(17203u, 102341u), ~37470u), Struct_1(_wgslsmith_add_vec2_i32(u_input.a.wx, vec2<i32>(u_input.a.x, 13089i)), vec4<u32>(u_input.b, 4294967295u, var_0.b.b.x, u_input.b), vec4<f32>(-704f, 922f, var_0.b.c.x, var_0.a.c.x), select(true, var_0.b.d, global2.x)), ~(var_0.b.b.zx | var_0.a.b.wy)), var_0.c.a.wxz), var_0.a, func_4(~countOneBits(firstLeadingBit(var_0.b.b.zzw)), func_2(func_2(any(global0[_wgslsmith_index_u32(2633u, 26u)]), func_2(true, Struct_1(var_0.a.a, vec4<u32>(var_0.b.b.x, u_input.b, 1263u, u_input.b), vec4<f32>(-1000f, -353f, var_0.a.c.x, 273f), false), Struct_2(var_0.c.a), vec3<bool>(global2.x, global2.x, false)), var_0.c, vec3<bool>(false, false, false)).d, var_0.a, Struct_2(vec4<bool>(var_0.c.a.x, true, var_0.c.a.x, true)), global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 26u)]), vec2<u32>(_wgslsmith_mult_u32(u_input.b, 44344u), u_input.b)));
    var var_1 = select(vec3<bool>(true, true, global2.x), vec3<bool>(!var_0.a.d, !var_0.a.d, true), (false || (_wgslsmith_add_i32(u_input.a.x, 0i) <= abs(-2147483647i))) || global2.x);
    global3 = false;
    var var_2 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(16732u, firstLeadingBit(u_input.b), u_input.b, _wgslsmith_f_op_vec3_f32(min(func_2(all(global0[_wgslsmith_index_u32(var_0.b.b.x, 26u)]), var_0.b, global1[_wgslsmith_index_u32(~var_0.b.b.x, 10u)], var_0.c.a.yyz).c.wzy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.b.c.yww, _wgslsmith_f_op_vec3_f32(var_0.b.c.zwx - vec3<f32>(-284f, -834f, var_0.a.c.x))))))));
}

