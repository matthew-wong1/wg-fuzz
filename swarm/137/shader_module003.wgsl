struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(-127f));

var<private> global1: Struct_5;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(2641f), Struct_1(583f), Struct_1(-572f), Struct_1(-825f), Struct_1(-825f), Struct_1(-305f), Struct_1(732f), Struct_1(-538f), Struct_1(186f), Struct_1(-554f), Struct_1(-1064f), Struct_1(666f), Struct_1(-1489f));

var<private> global3: Struct_5 = Struct_5(Struct_3(Struct_2(Struct_1(2756f)), vec2<f32>(-1077f, 561f), vec4<f32>(1624f, 723f, 348f, -231f), vec3<f32>(-944f, 395f, 1331f)), true, -18060i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> f32 {
    global0 = Struct_4(Struct_1(arg_1.a));
    global0 = Struct_4(Struct_1(-367f));
    let var_0 = ~(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4265u, u_input.c.x, 0u, 28194u) >> (vec4<u32>(33113u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~vec4<u32>(29461u, 106219u, 16827u, u_input.d.x), vec4<bool>(false, false, global3.b, false)), u_input.d) << (firstTrailingBit(~u_input.c.x | ~u_input.d.x) % 32u));
    global2 = array<Struct_1, 13>();
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-countOneBits(-2147483647i), -abs(global1.c), -((global1.c >> (4294967295u % 32u)) & ~0i), arg_2), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(arg_2, -1i) | ~(-22406i), arg_2, _wgslsmith_mult_i32(arg_2, 1i)), u_input.b));
    return -133f;
}

fn func_2() -> f32 {
    global2 = array<Struct_1, 13>();
    var var_0 = global2[_wgslsmith_index_u32(42502u, 13u)];
    global1 = Struct_5(global1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.c.x + global0.a.a), _wgslsmith_div_f32(-716f, global1.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a.a, Struct_1(global3.a.d.x), 1i)))) != global3.a.c.x, abs(~(-(~u_input.a))));
    let var_1 = Struct_3(global3.a.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c.x, global1.a.b.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.a.a.a, 1332f)))))), _wgslsmith_f_op_vec4_f32(global3.a.c - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global3.a.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.a.c - vec4<f32>(global1.a.a.a.a, global0.a.a, var_0.a, 555f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c.x, 1066f, global3.a.c.x, 733f) - vec4<f32>(-1000f, var_0.a, -245f, -468f))), !select(vec4<bool>(true, global1.b, true, true), vec4<bool>(false, true, global1.b, global1.b), vec4<bool>(false, true, global1.b, global1.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1790f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3.a.a.a.a)), _wgslsmith_f_op_f32(-global1.a.d.x)), _wgslsmith_f_op_f32(min(global3.a.a.a.a, -1034f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(global3.a.c.yyz, vec3<f32>(-964f, global1.a.b.x, 1294f))))))));
    global3 = Struct_5(global1.a, true, -16119i);
    return var_1.a.a.a;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec3<bool>) -> vec4<bool> {
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.x))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.a.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -1081f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1021f))))));
    var_0 = _wgslsmith_f_op_f32(-global3.a.b.x);
    let var_1 = ~u_input.c.x | 51863u;
    let var_2 = Struct_3(global3.a.a, vec2<f32>(1365f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.b.x + _wgslsmith_f_op_f32(select(global0.a.a, arg_0.a.d.x, true))), _wgslsmith_f_op_f32(max(355f, -1198f)))), _wgslsmith_f_op_vec4_f32(trunc(arg_0.a.c)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.a.a.a, arg_0.a.a.a.a, arg_0.a.a.a.a), vec3<f32>(-1000f, 1884f, -1157f), arg_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, global0.a.a, -494f) + vec3<f32>(1487f, arg_1.a.a, 2323f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, -734f, 240f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.x, global1.a.a.a.a, arg_1.a.a) - vec3<f32>(-206f, -217f, 1000f))) * global1.a.c.zyy))));
    return vec4<bool>(any(vec4<bool>(true, 1277f > global3.a.a.a.a, !(!arg_3.x), arg_3.x)), !select((arg_0.b || true) | select(true, false, arg_2.x), any(vec2<bool>(arg_0.b, true)), !all(vec3<bool>(arg_0.b, true, arg_2.x))), false & any(!(!vec4<bool>(false, global3.b, true, arg_3.x))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_3.x, arg_3.x, true), true), select(vec3<bool>(false, false, false), select(arg_3, arg_3, true), any(arg_2)), global3.b | global3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(select(select(vec4<bool>(global1.b, false, global3.b, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, global3.b)), select(vec4<bool>(false, true, global1.b, global3.b), vec4<bool>(global1.b, global3.b, global3.b, global1.b), global3.b), global0.a.a <= global0.a.a), !func_1(Struct_5(global3.a, true, global1.c), Struct_4(Struct_1(global1.a.c.x)), vec2<bool>(true, false), vec3<bool>(global1.b, global1.b, true)), global3.b));
    var var_1 = Struct_1(-697f);
    let var_2 = Struct_5(global3.a, func_1(Struct_5(global1.a, func_1(Struct_5(Struct_3(global3.a.a, vec2<f32>(var_1.a, -1382f), vec4<f32>(var_1.a, -1257f, global3.a.c.x, global0.a.a), global1.a.c.ywz), global3.b, 2147483647i), Struct_4(Struct_1(global0.a.a)), !var_0.xx, vec3<bool>(true, global1.b, global1.b)).x, ~abs(global1.c)), Struct_4(global2[_wgslsmith_index_u32(4294967295u, 13u)]), vec2<bool>(var_0.x, true), select(var_0.xwy, func_1(Struct_5(global1.a, var_0.x, -2147483647i), Struct_4(Struct_1(-1660f)), select(var_0.yz, var_0.yw, global3.b), select(vec3<bool>(global3.b, var_0.x, true), vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true))).wyy, _wgslsmith_sub_i32(u_input.a, global1.c) == _wgslsmith_add_i32(u_input.a, u_input.a))).x, global1.c);
    let var_3 = ~(~(~countOneBits(u_input.d.yzw)));
    var_1 = global3.a.a.a;
    let var_4 = vec4<bool>(all(func_1(var_2, Struct_4(Struct_1(223f)), vec2<bool>(all(vec4<bool>(global1.b, global1.b, var_0.x, false)), any(var_0.zyw)), select(!var_0.yxy, vec3<bool>(var_0.x, true, var_0.x), true))), !all(!vec3<bool>(false, true, var_0.x)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(2164u, _wgslsmith_f_op_f32(var_2.a.a.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.a, global1.a.b.x, false)) + -158f))));
}

