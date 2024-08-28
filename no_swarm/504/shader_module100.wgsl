struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec3<bool>(all(vec2<bool>(!(-2147483647i == u_input.c), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)))), all(vec4<bool>(true, any(vec3<bool>(true, true, true)), select(true, false, true), any(vec4<bool>(false, true, false, true)))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), true))));
    let var_1 = _wgslsmith_add_i32(u_input.c, abs(2147483647i));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c, var_1), ~u_input.c), 4553i), firstLeadingBit(select(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-2147483647i, -3171i)), select(vec2<i32>(var_1, 1i), vec2<i32>(var_1, -2147483647i), true), any(vec4<bool>(true, var_0.x, var_0.x, var_0.x))))), select(vec4<bool>(false, var_0.x, !(var_1 <= 2147483647i), var_0.x), vec4<bool>(var_1 < ~(-1i), true & (u_input.c == u_input.c), all(select(var_0.xx, vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x))), false), !select(!vec4<bool>(true, false, var_0.x, var_0.x), !vec4<bool>(true, true, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x))));
    let var_3 = var_2.a.x;
    let var_4 = select(false, !var_2.b.x, !var_0.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(114f + 874f)));
}

fn func_2() -> Struct_1 {
    let var_0 = ~(25333u ^ u_input.b);
    let var_1 = Struct_1(firstLeadingBit(vec2<i32>(1i, i32(-1i) * -1i)), vec4<bool>(18938i != u_input.c, ~u_input.d.x == ~33199u, select(_wgslsmith_f_op_f32(448f - 499f) <= _wgslsmith_f_op_f32(func_3()), false, true), !all(vec2<bool>(true, false))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1209f), _wgslsmith_f_op_f32(func_3())), -889f, _wgslsmith_div_f32(-1000f, 624f), -1211f);
    let var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(1u, ~u_input.a.x, 15647u, ~u_input.a.x) ^ select(vec4<u32>(~u_input.a.x, ~1440u, abs(28501u), 73284u), ~vec4<u32>(4294967295u, u_input.a.x, 34037u, 4294967295u) & u_input.d, true), _wgslsmith_mod_vec4_u32(u_input.d, u_input.d));
    global0 = 1u;
    var var_2 = vec4<bool>(true, true, all(!select(vec3<bool>(false, arg_0.b.x, arg_0.b.x), !arg_1.b.yww, false)), all(!func_2().b));
    let var_3 = arg_1;
    return Struct_1(arg_0.a, !vec4<bool>(true, var_2.x, func_2().b.x, var_3.b.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = 17861u;
    global0 = ~(~30842u);
    let var_0 = arg_1;
    let var_1 = Struct_1(-vec2<i32>((-21241i & arg_2.a.x) ^ _wgslsmith_clamp_i32(arg_1.a.x, -63360i, u_input.c), arg_1.a.x), vec4<bool>(_wgslsmith_div_i32(-arg_1.a.x, -u_input.c) >= -2147483647i, true, false, arg_2.b.x));
    global0 = 0u;
    return Struct_1(min(arg_1.a, _wgslsmith_add_vec2_i32(~var_0.a, vec2<i32>(1i, -13697i))) >> (u_input.d.wx % vec2<u32>(32u)), !select(var_1.b, vec4<bool>(arg_2.b.x, var_1.b.x, arg_1.b.x, all(vec3<bool>(arg_1.b.x, false, arg_1.b.x))), !func_2().b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec2<u32> {
    global0 = arg_3.x;
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(463f, -301f, -1159f, -958f), vec4<f32>(-411f, 850f, 933f, 225f)))))))), func_4(func_2(), func_2()), arg_0);
    var var_1 = select(!(!(arg_2.x >= var_0.a.x)) || (true & any(func_4(Struct_1(arg_0.a, vec4<bool>(false, true, true, arg_0.b.x)), arg_0).b.wzz)), !(_wgslsmith_sub_i32(29778i, -32480i) != -(u_input.c | arg_0.a.x)), false);
    let var_2 = func_4(func_4(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1174f, -2580f, 1000f, 220f)))), Struct_1(firstTrailingBit(arg_2.yx), select(vec4<bool>(var_0.b.x, arg_1.x, false, true), vec4<bool>(arg_1.x, arg_0.b.x, false, arg_0.b.x), true)), arg_0), Struct_1(abs(arg_2.zw | vec2<i32>(1i, u_input.c)), arg_0.b)), arg_0).b.yxy;
    var_0 = Struct_1(-(~vec2<i32>(arg_2.x, -arg_0.a.x)), select(select(func_2().b, !func_2().b, var_2.x), arg_0.b, !arg_0.b));
    return ~vec2<u32>(u_input.b, 0u & ~min(u_input.b, 4294967295u));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = countOneBits(~(~(arg_0.x | u_input.a.x) & 26108u));
    var var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-357f, _wgslsmith_f_op_f32(f32(-1f) * -415f))), _wgslsmith_div_f32(-1282f, _wgslsmith_f_op_f32(select(243f, -1229f, arg_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 395f))), _wgslsmith_f_op_f32(-489f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-925f + 1199f))))));
    var var_1 = 0i;
    var_1 = max(arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c, select(u_input.c, arg_2, arg_1.b.x)), 1i), _wgslsmith_mult_vec2_i32(arg_1.a, -vec2<i32>(u_input.c, arg_1.a.x))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -183f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1376f)) - -1000f) * _wgslsmith_div_f32(var_0.x, -484f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f - var_0.x)) - _wgslsmith_f_op_f32(-1000f - var_0.x)), arg_1.b.x)));
    return Struct_1(vec2<i32>(firstTrailingBit(arg_2), _wgslsmith_sub_i32(~2147483647i | u_input.c, min(~u_input.c, u_input.c | u_input.c))), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(min(~_wgslsmith_div_vec2_u32(select(vec2<u32>(9152u, 40434u), vec2<u32>(27664u, 1u), true), ~u_input.d.zx), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.ww, func_1(Struct_1(vec2<i32>(3264i, u_input.c), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, false, true), vec4<i32>(-22534i, -2147483647i, u_input.c, u_input.c), vec2<u32>(94325u, 0u))), reverseBits(select(vec2<u32>(0u, 1u), vec2<u32>(u_input.d.x, u_input.a.x), false)))), func_5(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(737f)), -529f, _wgslsmith_f_op_f32(abs(-734f)), _wgslsmith_f_op_f32(647f * 272f)))), Struct_1(func_2().a, !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true)), func_4(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1888f, -1273f, -1245f, 901f)), Struct_1(vec2<i32>(u_input.c, 2147483647i), vec4<bool>(false, false, false, true)), func_5(vec4<f32>(-643f, -1153f, -106f, -1000f), Struct_1(vec2<i32>(43885i, -2147483647i), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(u_input.c, -2147483647i), vec4<bool>(false, true, true, false)))), Struct_1(-vec2<i32>(u_input.c, u_input.c), vec4<bool>(true, true, true, true)))), ~2147483647i);
    let var_1 = !var_0.b.x;
    var_0 = func_4(func_6((func_1(Struct_1(vec2<i32>(u_input.c, 1i), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x)), var_0.b, vec4<i32>(u_input.c, u_input.c, var_0.a.x, 0i), u_input.a) ^ ~u_input.a) >> (_wgslsmith_sub_vec2_u32(u_input.a << (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(3425u, u_input.d.x), vec2<u32>(1u, 3429u))) % vec2<u32>(32u)), func_2(), -(~var_0.a.x)), func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-194f, -1027f, 147f, 2164f), vec4<f32>(-1582f, -2421f, -1000f, 1929f))))))), Struct_1(-var_0.a & vec2<i32>(1i, 7242i), !select(vec4<bool>(var_0.b.x, true, var_1, false), vec4<bool>(true, var_0.b.x, var_1, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, true, var_1))), Struct_1(firstLeadingBit(vec2<i32>(-11328i, u_input.c)), vec4<bool>(var_0.b.x, var_0.a.x >= -1i, false | var_1, true))));
    let var_2 = func_2();
    var var_3 = func_2();
    var var_4 = func_2();
    var var_5 = var_2.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.a.x);
}

