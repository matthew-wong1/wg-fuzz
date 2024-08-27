struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_3, 29>;

var<private> global2: f32 = -2110f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = select(vec3<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), all(vec4<bool>(true, true, true, true)), true | (arg_0 > _wgslsmith_f_op_f32(-global0.x))), vec3<bool>(-1042f > _wgslsmith_f_op_f32(floor(-391f)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true))), true && any(vec3<bool>(true, false, true))), !(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))));
    var var_1 = Struct_2(Struct_1(abs(-reverseBits(u_input.d.x))), _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(1u, u_input.c))), _wgslsmith_mult_vec2_u32(~vec2<u32>(112162u, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 51449u), vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.c, u_input.b)) << (select(vec2<u32>(1u, 50300u), vec2<u32>(4294967295u, 12027u), var_0.zx) % vec2<u32>(32u)))), Struct_1(u_input.d.x), -(vec4<i32>(29684i, 61867i, u_input.a, u_input.d.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 22618i, u_input.d.x, u_input.e), vec4<i32>(u_input.d.x, 0i, -1i, 0i))) & -(~vec4<i32>(u_input.d.x, 2147483647i, -1i, 26931i) | vec4<i32>(1i, u_input.a, u_input.e, u_input.a)));
    var_0 = vec3<bool>(!(!var_0.x), var_0.x, var_0.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -436f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, arg_0))))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(617f + 1562f)))));
    var var_3 = all(!vec3<bool>(true, var_0.x, var_0.x));
    return vec3<bool>((~var_1.b.x >> (~12757u % 32u)) >= 1u, !var_0.x, var_0.x || (var_0.x && all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x)))));
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-412f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -963f) - _wgslsmith_f_op_f32(trunc(global0.x)))))));
    let var_1 = !func_3(global0.x);
    var var_2 = select(!var_1.x, all(select(!vec4<bool>(true, arg_0.a.a, arg_0.a.a, arg_0.a.a), select(vec4<bool>(arg_0.a.a, true, true, var_1.x), vec4<bool>(var_1.x, false, false, arg_0.a.a), false), select(false, false, true))) || func_3(var_0.x).x, all(select(vec2<bool>(any(vec4<bool>(false, true, arg_0.a.a, arg_0.a.a)), var_1.x && false), !select(vec2<bool>(arg_0.a.a, false), var_1.xx, vec2<bool>(false, true)), var_1.zz)));
    let var_3 = _wgslsmith_f_op_f32(sign(global0.x));
    let var_4 = arg_0.b.d.x & _wgslsmith_div_i32(~(-20315i), 1i);
    return !var_1.xy;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.c | u_input.c, u_input.b, u_input.b)), abs(vec3<u32>(43546u >> (u_input.c % 32u), abs(u_input.c), 17051u)) | ~abs(max(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(0u, 4294967295u, 21841u))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(228f - _wgslsmith_f_op_f32(global0.x - -544f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f - 888f)))) * -818f);
    global1 = array<Struct_3, 29>();
    global1 = array<Struct_3, 29>();
    var var_1 = -u_input.a;
    return Struct_3(global0.x <= 1359f, Struct_2(Struct_1(u_input.a), max(~(~var_0.yy), var_0.zz), Struct_1(i32(-1i) * -u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(u_input.d.x), u_input.a, firstLeadingBit(u_input.d.x), ~u_input.e), _wgslsmith_div_vec4_i32(vec4<i32>(-17349i, -2147483647i, u_input.e, u_input.a) << (vec4<u32>(66200u, 21688u, 81929u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<i32>(u_input.a, u_input.e, -2147483647i, 0i))), ~(vec4<i32>(u_input.d.x, 1i, -24216i, 2147483647i) | vec4<i32>(-1i, 0i, u_input.e, u_input.e)))), _wgslsmith_sub_vec2_u32(min(select(max(vec2<u32>(u_input.b, var_0.x), var_0.yx), vec2<u32>(13899u, 58104u), any(arg_1)), var_0.xy), min(vec2<u32>(~var_0.x, 1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c), var_0.xy))));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 964f)) + vec2<f32>(-160f, global0.x)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-858f, -189f) - vec2<f32>(-649f, 1263f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))))));
    var var_0 = Struct_4(func_4(true, func_2(Struct_4(Struct_3(true, Struct_2(Struct_1(u_input.d.x), vec2<u32>(29077u, 81051u), Struct_1(-2147483647i), vec4<i32>(2147483647i, 0i, u_input.d.x, 16065i)), vec2<u32>(u_input.c, u_input.c)), Struct_2(Struct_1(u_input.e), vec2<u32>(1u, u_input.c), Struct_1(-1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(u_input.d.zz)))), Struct_2(Struct_1(u_input.d.x), ~(~vec2<u32>(u_input.c, 46439u)), Struct_1(select(countOneBits(27169i), u_input.d.x, true)), -vec4<i32>(26505i, u_input.a, ~(-1i), select(-1i, u_input.a, true))), vec2<i32>((_wgslsmith_add_i32(u_input.a, u_input.e) ^ _wgslsmith_div_i32(0i, 11010i)) << (_wgslsmith_sub_u32(4294967295u, u_input.c | 4294967295u) % 32u), -32519i));
    var var_1 = ~_wgslsmith_add_u32(min(1u, u_input.b), u_input.b) & _wgslsmith_mod_u32(4294967295u, 93630u);
    var var_2 = Struct_4(func_4(true, func_3(global0.x).xz), var_0.a.b, ~_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(-9378i, u_input.d.x) | vec2<i32>(u_input.a, u_input.d.x)), select(vec2<i32>(42171i, 1217i), ~u_input.d.xz, vec2<bool>(var_0.a.a, var_0.a.a))));
    var var_3 = var_0.b.c;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(~u_input.b, 29u)], func_1(), reverseBits(func_4(func_3(_wgslsmith_div_f32(-728f, global0.x)).x, select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), -48373i <= u_input.e)).b.d.zx));
    var var_2 = func_1();
    let var_3 = func_1();
    var_2 = var_1.a.b;
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) * _wgslsmith_f_op_f32(1579f + 1f))));
    global2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -727f)), global0.x)), var_2.b);
}

