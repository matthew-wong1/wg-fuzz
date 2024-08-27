struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 47508i, 2147483647i, -33048i);

var<private> global1: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(11390i, true, Struct_2(Struct_1(true, -9235i, vec2<bool>(true, false), vec3<u32>(4184u, 111347u, 0u)))), Struct_5(2147483647i, false, Struct_2(Struct_1(true, 7602i, vec2<bool>(false, true), vec3<u32>(1u, 10656u, 42836u)))), Struct_5(2147483647i, true, Struct_2(Struct_1(false, 29091i, vec2<bool>(false, false), vec3<u32>(0u, 2802u, 1u)))), Struct_5(2147483647i, false, Struct_2(Struct_1(true, 2147483647i, vec2<bool>(true, false), vec3<u32>(1u, 11450u, 65132u)))), Struct_5(0i, true, Struct_2(Struct_1(false, 1061i, vec2<bool>(false, false), vec3<u32>(0u, 1u, 29608u)))), Struct_5(-56458i, false, Struct_2(Struct_1(true, 7552i, vec2<bool>(false, false), vec3<u32>(4294967295u, 0u, 4294967295u)))), Struct_5(-20595i, true, Struct_2(Struct_1(false, i32(-2147483648), vec2<bool>(false, true), vec3<u32>(31409u, 0u, 29260u)))), Struct_5(9444i, false, Struct_2(Struct_1(true, i32(-2147483648), vec2<bool>(true, false), vec3<u32>(24283u, 33577u, 0u)))), Struct_5(-19094i, true, Struct_2(Struct_1(false, 0i, vec2<bool>(false, false), vec3<u32>(6242u, 0u, 28001u)))), Struct_5(32839i, false, Struct_2(Struct_1(false, 0i, vec2<bool>(false, false), vec3<u32>(4294967295u, 1u, 28018u)))), Struct_5(-19504i, true, Struct_2(Struct_1(false, 2147483647i, vec2<bool>(false, false), vec3<u32>(1u, 54000u, 1u)))), Struct_5(-1i, false, Struct_2(Struct_1(true, -1i, vec2<bool>(true, true), vec3<u32>(0u, 5076u, 4294967295u)))), Struct_5(47134i, false, Struct_2(Struct_1(true, -26497i, vec2<bool>(false, true), vec3<u32>(4294967295u, 40757u, 0u)))), Struct_5(i32(-2147483648), true, Struct_2(Struct_1(false, -7905i, vec2<bool>(false, true), vec3<u32>(93165u, 26089u, 32809u)))), Struct_5(1i, true, Struct_2(Struct_1(true, 0i, vec2<bool>(true, true), vec3<u32>(1u, 60250u, 11705u)))), Struct_5(-25815i, false, Struct_2(Struct_1(true, -52522i, vec2<bool>(true, true), vec3<u32>(64528u, 1u, 2388u)))), Struct_5(1i, true, Struct_2(Struct_1(true, 0i, vec2<bool>(true, true), vec3<u32>(0u, 14903u, 129u)))), Struct_5(i32(-2147483648), true, Struct_2(Struct_1(false, 0i, vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 1u)))), Struct_5(-50598i, false, Struct_2(Struct_1(false, 2147483647i, vec2<bool>(false, true), vec3<u32>(1u, 0u, 55214u)))), Struct_5(0i, true, Struct_2(Struct_1(true, 10597i, vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 54192u)))), Struct_5(-31827i, false, Struct_2(Struct_1(false, 0i, vec2<bool>(false, false), vec3<u32>(16934u, 65131u, 1u)))), Struct_5(2147483647i, false, Struct_2(Struct_1(false, -1i, vec2<bool>(true, true), vec3<u32>(1u, 4294967295u, 1u)))), Struct_5(2147483647i, true, Struct_2(Struct_1(false, 40437i, vec2<bool>(true, true), vec3<u32>(4294967295u, 38872u, 0u)))), Struct_5(0i, false, Struct_2(Struct_1(true, -1i, vec2<bool>(false, true), vec3<u32>(20466u, 0u, 27599u)))), Struct_5(-1i, true, Struct_2(Struct_1(true, 33440i, vec2<bool>(false, true), vec3<u32>(43693u, 1u, 4294967295u)))), Struct_5(-3118i, true, Struct_2(Struct_1(true, -1i, vec2<bool>(true, false), vec3<u32>(52304u, 40141u, 0u)))), Struct_5(-6014i, true, Struct_2(Struct_1(false, i32(-2147483648), vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 20238u)))), Struct_5(-1i, true, Struct_2(Struct_1(false, 0i, vec2<bool>(false, false), vec3<u32>(0u, 66695u, 81810u)))), Struct_5(7023i, false, Struct_2(Struct_1(false, 0i, vec2<bool>(false, false), vec3<u32>(4294967295u, 29285u, 15260u)))), Struct_5(-48392i, true, Struct_2(Struct_1(false, -9106i, vec2<bool>(true, false), vec3<u32>(0u, 1923u, 41465u)))), Struct_5(28745i, false, Struct_2(Struct_1(true, -61038i, vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 95459u)))), Struct_5(-1i, true, Struct_2(Struct_1(false, 15347i, vec2<bool>(false, true), vec3<u32>(53065u, 13568u, 15987u)))));

var<private> global2: Struct_1 = Struct_1(true, 42091i, vec2<bool>(false, false), vec3<u32>(20249u, 4294967295u, 53226u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<u32>) -> i32 {
    let var_0 = 4294967295u & arg_1.x;
    var var_1 = arg_0.c.a.d;
    let var_2 = !vec3<bool>(arg_0.b, _wgslsmith_mod_i32(-8735i, ~(-2147483647i)) != global2.b, !(!(4294967295u >= global2.d.x)));
    var var_3 = arg_0.c.a;
    var var_4 = all(!vec4<bool>(false, all(select(var_2, vec3<bool>(true, var_2.x, true), var_2)), true, var_2.x));
    return 11011i;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_4) -> vec4<i32> {
    return select(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-26638i, func_3(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.b)), ~(-global0.x)), -71798i, global2.b, 1i), ~vec4<i32>(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(34371i, 64626i)), _wgslsmith_mult_i32(firstLeadingBit(global0.x), _wgslsmith_dot_vec2_i32(global0.yx, vec2<i32>(-30879i, global0.x))), arg_2.b.a.b, reverseBits(-1i)), arg_2.a);
}

fn func_1() -> Struct_4 {
    var var_0 = -(~_wgslsmith_sub_vec4_i32(func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1108f, -997f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2143f, -1316f, 318f))), Struct_4(global2.c.x, Struct_2(Struct_1(global2.c.x, global2.b, global2.c, vec3<u32>(18451u, 14949u, u_input.b.x))), Struct_3(1i, vec2<u32>(29805u, global2.d.x)), vec3<f32>(-588f, -279f, -1598f), vec2<f32>(768f, -2781f))), vec4<i32>(_wgslsmith_mod_i32(42463i, global0.x), _wgslsmith_mod_i32(global2.b, 65137i), 2147483647i, -2071i)));
    let var_1 = !vec2<bool>(!(!(!global2.c.x)), global2.c.x);
    global2 = Struct_1(var_1.x, ~0i, !vec2<bool>(var_1.x, !var_1.x), global2.d);
    global0 = vec4<i32>(global2.b, _wgslsmith_div_i32(33705i, 1i) | (-2147483647i | ~global2.b), _wgslsmith_add_i32(abs(-_wgslsmith_mult_i32(10190i, -7454i)), ~(-var_0.x)), i32(-1i) * -2147483647i);
    let var_2 = Struct_5(i32(-1i) * -2147483647i, true, Struct_2(Struct_1(global2.c.x, firstTrailingBit(-global2.b), vec2<bool>(!var_1.x, false), _wgslsmith_mult_vec3_u32(global2.d, ~vec3<u32>(global2.d.x, 8987u, 1677u)))));
    return Struct_4(any(vec4<bool>(firstTrailingBit(global2.d.x) != reverseBits(global2.d.x), var_1.x, false, false)), Struct_2(Struct_1(true, _wgslsmith_mod_i32(var_2.a, func_2(vec2<f32>(-534f, -838f), vec3<f32>(683f, 606f, 1000f), Struct_4(false, var_2.c, Struct_3(var_2.c.a.b, u_input.b), vec3<f32>(-963f, -366f, -581f), vec2<f32>(-245f, 321f))).x), !(!global2.c), vec3<u32>(~global2.d.x, global2.d.x, ~4294967295u))), Struct_3(2147483647i, ~global2.d.zy & ~vec2<u32>(1u, global2.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(max(-485f, 472f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1397f, -1525f, 825f), vec3<f32>(255f, -1527f, 797f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1621f), -2491f, _wgslsmith_f_op_f32(ceil(438f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(756f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1988f))))));
}

fn func_4(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, arg_0.b.a.a, true), vec4<bool>(arg_0.a, arg_0.b.a.c.x, false, true), vec4<bool>(arg_0.b.a.a, global2.c.x, false, true)), vec4<bool>(true, arg_0.b.a.c.x, true, global2.c.x)), vec4<bool>(!arg_0.b.a.c.x, true, any(vec3<bool>(global2.c.x, arg_0.a, arg_0.a)), false), !select(vec4<bool>(false, global2.a, false, arg_0.a), vec4<bool>(false, false, false, global2.c.x), vec4<bool>(false, true, true, global2.c.x))), select(!(!(!vec4<bool>(true, global2.c.x, global2.a, arg_0.b.a.c.x))), select(select(vec4<bool>(global2.c.x, true, arg_0.a, true), !vec4<bool>(true, global2.c.x, true, false), select(vec4<bool>(arg_0.a, global2.a, false, false), vec4<bool>(global2.a, global2.c.x, true, true), global2.c.x)), !vec4<bool>(arg_0.a, global2.c.x, true, arg_0.b.a.a), !(!vec4<bool>(global2.c.x, global2.c.x, false, true))), vec4<bool>(true, true, false, any(select(vec4<bool>(arg_0.b.a.c.x, false, false, arg_0.b.a.c.x), vec4<bool>(global2.a, global2.c.x, false, global2.a), true)))), !global2.a || global2.c.x);
    global1 = array<Struct_5, 32>();
    var var_1 = 372f;
    global0 = firstTrailingBit(-(vec4<i32>(-arg_0.b.a.b, func_3(global1[_wgslsmith_index_u32(4294967295u, 32u)], u_input.b), global2.b << (u_input.a % 32u), arg_0.c.a | global0.x) >> (select(~vec4<u32>(1u, 114u, 16619u, 33993u), abs(vec4<u32>(global2.d.x, 4294967295u, 4294967295u, u_input.b.x)), !vec4<bool>(arg_0.b.a.c.x, global2.c.x, false, arg_0.b.a.c.x)) % vec4<u32>(32u))));
    var var_2 = 102655u;
    return var_0.zzx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 32>();
    var var_0 = select(select(select(vec3<bool>(true, global2.c.x, global2.a), select(vec3<bool>(false, global2.c.x, false), vec3<bool>(false, global2.c.x, global2.a), u_input.a <= 25940u), vec3<bool>(global2.c.x, global2.c.x, any(vec4<bool>(true, true, global2.c.x, global2.a)))), !(!(!vec3<bool>(global2.a, false, global2.a))), true), !func_4(func_1()), func_4(Struct_4(false, func_1().b, func_1().c, vec3<f32>(func_1().e.x, _wgslsmith_f_op_f32(abs(-317f)), -546f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1779f, 1527f), vec2<f32>(1000f, -114f))))))));
    global1 = array<Struct_5, 32>();
    var var_1 = func_1().b;
    var_0 = !select(vec3<bool>(true, global2.a, (var_1.a.b <= 12500i) | (global2.b == global2.b)), vec3<bool>(var_0.x, false, all(func_4(Struct_4(var_0.x, Struct_2(var_1.a), Struct_3(global2.b, vec2<u32>(69316u, global2.d.x)), vec3<f32>(-218f, -353f, -518f), vec2<f32>(-655f, -303f))).yy)), !(!vec3<bool>(var_0.x, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2147483647i, -18753i << (_wgslsmith_mult_u32(~u_input.a, u_input.b.x) % 32u)), _wgslsmith_f_op_f32(ceil(-783f)), var_1.a.b);
}

