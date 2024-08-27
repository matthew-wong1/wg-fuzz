struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u))), Struct_4(Struct_1(vec4<u32>(35029u, 4294967295u, 6404u, 48959u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 8258u, 1u, 0u))), Struct_4(Struct_1(vec4<u32>(61707u, 83490u, 2838u, 4294967295u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 60077u))), Struct_4(Struct_1(vec4<u32>(1134u, 53914u, 4294967295u, 71652u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 41634u, 80960u, 1u))), Struct_4(Struct_1(vec4<u32>(6302u, 0u, 0u, 18145u))), Struct_4(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 8525u))), Struct_4(Struct_1(vec4<u32>(0u, 1u, 1132u, 55876u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 46109u, 1u, 1u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 1u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 34552u, 93584u, 2664u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, 25561u, 0u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 0u, 1u, 0u))), Struct_4(Struct_1(vec4<u32>(29263u, 13804u, 1u, 10878u))), Struct_4(Struct_1(vec4<u32>(21416u, 5728u, 2726u, 17852u))), Struct_4(Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u))), Struct_4(Struct_1(vec4<u32>(4294967295u, 92762u, 4294967295u, 1u))), Struct_4(Struct_1(vec4<u32>(47672u, 0u, 118021u, 1u))));

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 19>;

var<private> global3: i32;

var<private> global4: u32 = 1u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(abs(u_input.a), 0u, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, u_input.a), vec4<u32>(4294967295u, u_input.a, 24943u, 64788u))) & vec4<u32>(u_input.a, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u)), _wgslsmith_mod_u32(105976u, u_input.a)), vec4<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, u_input.a)));
    global2 = array<vec3<i32>, 19>();
    let var_1 = any(select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), all(vec2<bool>(true, false))), vec2<bool>(all(vec4<bool>(true, true, false, true)), true), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), true));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(max(-280f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(440f, 512f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-900f - 1000f)))), select(!select(select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, true)), select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), var_1), true), select(vec2<bool>(var_1, !var_1), select(vec2<bool>(true, true), select(vec2<bool>(var_1, true), vec2<bool>(false, var_1), var_1), select(vec2<bool>(true, false), vec2<bool>(true, true), var_1)), vec2<bool>(true, false)), false), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-7190i, -1i) << (var_0.a.yy % vec2<u32>(32u)), vec2<i32>(-14383i, 29169i)) ^ -_wgslsmith_mult_i32(firstLeadingBit(10604i), -54514i), Struct_2(!(!(!var_1)), select(!vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, var_1, any(vec3<bool>(true, false, var_1))), !var_1), true, firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i))));
    let var_3 = false;
    return !var_2.c;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(~1i < _wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, -2147483647i), abs(1i), _wgslsmith_mod_i32(min(-1i, 2147483647i), i32(-1i) * -48665i)), vec4<bool>(true, true, true, true), false, min(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(867i, 1i, 37128i, 6660i), vec4<i32>(14703i, 0i, 21749i, 44489i))) & select(vec4<i32>(2147483647i, -1i, -2514i, -1i), ~vec4<i32>(-16420i, -2147483647i, -2147483647i, 0i), true), vec4<i32>(_wgslsmith_clamp_i32(1i, 1i, ~55614i), -(~8695i), ~(-55932i), 1i)));
    var var_1 = Struct_1(firstLeadingBit(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(45886u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 1u, u_input.a, 58713u)), vec4<u32>(u_input.a, u_input.a, 34516u, u_input.a) | vec4<u32>(u_input.a, 48266u, 1u, 61087u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), firstTrailingBit(u_input.a))));
    let var_2 = Struct_3(-439f, -1242f, !select(func_3(), select(vec2<bool>(true, true), select(vec2<bool>(var_0.b.x, var_0.a), vec2<bool>(var_0.b.x, var_0.a), true), !vec2<bool>(var_0.b.x, var_0.b.x)), vec2<bool>(func_3().x, true)), var_0.d.x, Struct_2(true, var_0.b, !(!(false || var_0.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-22771i, -29982i), _wgslsmith_mod_i32(var_0.d.x, var_0.d.x), var_0.d.x, i32(-1i) * -1i), _wgslsmith_div_vec4_i32(var_0.d, var_0.d))));
    global4 = min(_wgslsmith_dot_vec2_u32(var_1.a.zz, var_1.a.xz), 61552u);
    var var_3 = -10443i;
    return global0[_wgslsmith_index_u32(67260u, 20u)];
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global1 = any(!select(vec2<bool>(arg_0.a.a.x > u_input.a, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, -376f, _wgslsmith_f_op_f32(f32(-1f) * -492f))))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-3026f, -412f, false)))))));
    let var_2 = !vec4<bool>(any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, true, true))), true, true, true);
    let var_3 = false;
    return Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.a.yw & vec2<u32>(68785u, 4294967295u), ~arg_0.a.a.zx), ~_wgslsmith_add_vec2_u32(arg_0.a.a.xz, vec2<u32>(u_input.a, arg_0.a.a.x))) <= _wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_dot_vec2_u32(~arg_0.a.a.wy, arg_0.a.a.yx << (vec2<u32>(28548u, 20987u) % vec2<u32>(32u)))), select(!vec4<bool>(any(var_2.yy), any(var_2), var_2.x, false), select(vec4<bool>(all(var_2), true, true, false), !var_2, _wgslsmith_clamp_u32(arg_0.a.a.x, 47495u, 0u) != _wgslsmith_clamp_u32(1u, 1u, 0u)), all(select(var_2.zzy, vec3<bool>(var_3, var_3, var_3), var_2.ywy))), !var_3 & any(select(var_2, var_2, select(var_2, var_2, var_2.x))), countOneBits(max(~countOneBits(vec4<i32>(-1i, -8817i, 2147483647i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = func_2();
    global4 = 31842u;
    global4 = firstTrailingBit(var_0.a.a.x & ~abs(0u)) << (_wgslsmith_dot_vec3_u32(var_0.a.a.wyz >> (countOneBits(var_0.a.a.xzz) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(var_0.a.a.zwz, vec3<u32>(13827u, u_input.a, var_0.a.a.x))) % 32u);
    var var_1 = ~countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.d.ww, vec2<i32>(arg_0.d.x, 1i)), arg_0.d.zw) & arg_1);
    global3 = abs(_wgslsmith_mult_i32(arg_0.d.x, ~(~arg_1) & abs(-11099i)));
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec3<bool> {
    let var_0 = Struct_3(arg_2, _wgslsmith_f_op_f32(-arg_2), vec2<bool>(arg_1, !arg_1), func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(3299u, u_input.a | u_input.a), 20u)]).d.x | 0i, Struct_2(arg_1, select(vec4<bool>(arg_1, arg_1, any(vec2<bool>(true, arg_1)), false | arg_1), select(!vec4<bool>(true, false, arg_1, false), select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, false)), true || arg_1), false && (false && arg_1)), false, vec4<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-1i, 2147483647i, 77597i)), i32(-1i) * -79243i) | vec4<i32>(firstLeadingBit(25797i), ~(-1i), ~1i, -45239i)));
    let var_1 = Struct_2(var_0.c.x, select(select(select(!var_0.e.b, select(vec4<bool>(false, true, true, true), var_0.e.b, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), !var_0.e.b, vec4<bool>(true, true, false, var_0.e.b.x)), !select(var_0.e.b, !vec4<bool>(var_0.c.x, var_0.e.a, false, arg_1), arg_1 == arg_1), vec4<bool>(!var_0.c.x, var_0.c.x, !var_0.c.x, var_0.e.b.x)), true, reverseBits(-var_0.e.d));
    global0 = array<Struct_4, 20>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + 698f)))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_div_f32(arg_2, -180f));
    var var_3 = false;
    return !select(vec3<bool>(!(u_input.a < 4294967295u), (var_1.d.x ^ -1i) < countOneBits(var_1.d.x), arg_1), !(!select(vec3<bool>(var_1.c, false, arg_1), vec3<bool>(true, arg_1, var_0.e.c), var_1.b.xyz)), true);
}

fn func_7(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_3.b)))) * _wgslsmith_f_op_f32(-arg_3.a)) <= _wgslsmith_f_op_f32(-arg_3.b);
    global1 = true;
    var var_0 = vec2<i32>(firstLeadingBit(5292i), max(_wgslsmith_sub_i32(7534i, arg_3.e.d.x) >> (countOneBits(arg_2.a.x) % 32u), _wgslsmith_add_i32(-8524i, -11218i) << (arg_2.a.x % 32u)) & _wgslsmith_mult_i32(-28057i, -arg_3.e.d.x));
    var var_1 = arg_3.e.d;
    let var_2 = arg_3.e;
    return func_2();
}

fn func_1() -> vec2<bool> {
    global0 = array<Struct_4, 20>();
    let var_0 = ~firstTrailingBit(vec2<u32>(~(u_input.a >> (40327u % 32u)), u_input.a));
    let var_1 = reverseBits(-23561i);
    var var_2 = func_7(func_6(Struct_1(vec4<u32>(var_0.x, ~var_0.x, ~81614u, var_0.x)), func_5(func_4(func_2()), -7268i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-549f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1005f)))))), _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(3213u, var_0.x, u_input.a), vec3<u32>(4294967295u, 1u, 4294967295u)), 53350u >> (var_0.x % 32u)), vec2<u32>(1u, 1u) << (firstTrailingBit(vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))), Struct_1(~(vec4<u32>(58277u, 4294967295u, var_0.x, u_input.a) | vec4<u32>(33328u, var_0.x, 19963u, 4294967295u))), Struct_3(1f, -1696f, vec2<bool>(true, all(vec3<bool>(true, false, false))), func_4(global0[_wgslsmith_index_u32(var_0.x, 20u)]).d.x, func_4(global0[_wgslsmith_index_u32(~(~4294967295u), 20u)])));
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-214f, -1205f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-738f, 428f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, 155f)), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-760f, -1126f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(937f, 587f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1050f, -972f), vec2<f32>(1269f, 319f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(866f, 460f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-629f, 244f) + vec2<f32>(-1553f, -1027f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1434f, -352f), vec2<f32>(297f, 375f))))))));
    return func_4(Struct_4(var_2.a)).b.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(func_1());
    global3 = -25314i;
    let var_0 = func_5(func_4(func_2()), 1i);
    let var_1 = select(4294967295u, (u_input.a | ~(~69563u)) & u_input.a, false);
    var var_2 = ~(~u_input.a);
    let var_3 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, (var_1 ^ 4294967295u) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, 33803u), vec3<u32>(1u, u_input.a, 35817u)), 1u, reverseBits(71850u))), 20u)]).b.yzy;
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), -select(vec4<i32>(3029i, 0i, 1i, 7449i), vec4<i32>(-1i, 1i, -1i, -6554i), true), -(~vec4<i32>(53248i, -1i, 2147483647i, -1i)))) & -min(abs(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(_wgslsmith_add_i32(8213i, -32684i), 0i, 1i, abs(-1i)));
    let var_5 = Struct_4(Struct_1(max(vec4<u32>(1u, firstTrailingBit(38018u), var_1, ~8968u), vec4<u32>(firstTrailingBit(u_input.a), select(0u, u_input.a, true), 11427u, ~9978u))));
    let var_6 = func_4(func_7(var_3, var_5.a.a.yx, Struct_1(var_5.a.a), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -105f), _wgslsmith_f_op_f32(floor(800f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-563f * -842f)), func_1(), countOneBits(_wgslsmith_dot_vec3_i32(var_4.wzy, global2[_wgslsmith_index_u32(4294967295u, 19u)])), func_4(Struct_4(Struct_1(var_5.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.x, -940f, ~countOneBits(var_5.a.a.yx), var_5.a.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1203f) + _wgslsmith_f_op_f32(round(459f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1406f + -2269f), _wgslsmith_f_op_f32(742f + -978f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1597f + -1000f))))));
}

