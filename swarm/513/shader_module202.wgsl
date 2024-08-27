struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8>;

var<private> global1: Struct_1 = Struct_1(47055u, 23783u, 26996i, vec4<bool>(true, true, false, true));

var<private> global2: Struct_3;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_5) -> vec4<bool> {
    var var_0 = vec2<u32>(global1.b, (reverseBits(global1.b) >> (~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)) | _wgslsmith_dot_vec3_u32((vec3<u32>(27568u, 13324u, global1.b) | u_input.a.xyz) >> (~vec3<u32>(1975u, u_input.a.x, global4.a) % vec3<u32>(32u)), vec3<u32>(0u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4667u, 1u), vec2<u32>(global1.b, u_input.a.x)))));
    var var_1 = Struct_5(Struct_4(arg_2.a.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, -186f, arg_2.a.b.x))))), global2.a.xyw), global4.d.wz, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(floor(1095f)), -1000f))));
    var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 1f, _wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(-var_1.a.b.x)))));
    global0 = array<vec3<bool>, 8>();
    return select(vec4<bool>(false, false & all(!global1.d.wzw), var_1.a.c.x, (i32(-1i) * -21749i) <= arg_2.a.a.x), vec4<bool>(any(select(!global1.d.zwy, global4.d.zwx, true)), var_1.a.c.x, all(vec3<bool>(select(global1.d.x, global4.d.x, global4.d.x), true, var_1.a.c.x)), select(false, !(var_1.a.c.x & false), false)), -1313i <= _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a.x, arg_2.a.a.x, 1i, -1i), vec4<i32>(global4.c, global4.c, var_1.a.a.x, 0i)), 2147483647i), max(~vec2<i32>(-53424i, 2147483647i), var_1.a.a.yy)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    global0 = array<vec3<bool>, 8>();
    global1 = Struct_1(global4.a, ~global1.b, 32653i, func_3(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - -313f) - _wgslsmith_f_op_f32(step(425f, arg_1.x))) >= 1064f, Struct_5(Struct_4(vec3<i32>(-14238i, global1.c, 5841i) << (u_input.a.wzw % vec3<u32>(32u)), arg_1.zxz, !vec2<bool>(global4.d.x, global1.d.x), Struct_2(arg_1.xz)))));
    global2 = Struct_3(_wgslsmith_div_vec4_f32(global2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(max(1062f, arg_1.x)), _wgslsmith_f_op_f32(select(arg_1.x, -631f, global1.d.x)), _wgslsmith_f_op_f32(min(global2.a.x, -854f))))));
    global4 = Struct_1(_wgslsmith_div_u32(global1.a, u_input.a.x), global1.a, -2147483647i, select(vec4<bool>(select(global4.d.x || false, global1.d.x, all(global0[_wgslsmith_index_u32(45930u, 8u)])), global4.d.x, true, global4.d.x), vec4<bool>(global4.d.x, func_3(-1948f, true, Struct_5(Struct_4(vec3<i32>(0i, -1i, 0i), global2.a.yxx, global4.d.wz, Struct_2(vec2<f32>(-450f, arg_1.x))))).x, any(global4.d) | global4.d.x, true), vec4<bool>(all(!vec4<bool>(global4.d.x, global1.d.x, global1.d.x, global4.d.x)), false, true, global4.d.x)));
    global3 = ~4294967295u;
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.x, global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(445f))));
    global1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(global4.a, 0u, 2023u, global1.a), u_input.a, global1.d), ~(~u_input.a)), u_input.a.x), 714u, _wgslsmith_sub_i32(global1.c, -2147483647i), global1.d);
    let var_1 = vec4<bool>(~global4.c >= ~global1.c, func_3(_wgslsmith_f_op_f32(func_2(~0u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.x, var_0.x, global2.a.x, 416f))))))), any(vec3<bool>(true, any(vec3<bool>(false, true, global1.d.x)), global1.d.x | true)), Struct_5(Struct_4(max(vec3<i32>(-12509i, global1.c, 1545i), vec3<i32>(-1i, global1.c, -1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, -1000f, 2050f)), !global1.d.ww, arg_1))).x, !any(select(vec3<bool>(global4.d.x, global4.d.x, false), !vec3<bool>(global1.d.x, global4.d.x, false), any(global4.d.yy))), global4.d.x);
    let var_2 = false;
    let var_3 = global1.d.x == select(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, var_2, false), true)), _wgslsmith_div_i32(countOneBits(-16639i), firstTrailingBit(0i)) >= ~_wgslsmith_add_i32(0i, global4.c), any(!select(vec2<bool>(true, true), global1.d.ww, vec2<bool>(false, var_1.x))));
    return Struct_4(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -43734i, global1.c), vec2<i32>(-17870i, global1.c)), global4.c, _wgslsmith_mult_i32(global1.c | 15007i, ~(-2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.x, -817f, true)), _wgslsmith_f_op_f32(-global2.a.x), 1000f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.a.ywz))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -453f, -1000f))), vec2<bool>(global1.d.x, all(vec2<bool>(var_3, true))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a + var_0.zx)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.a.yyx;
    let var_1 = -(global4.c << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(15098u, global4.b), ~_wgslsmith_mod_u32(4452u, 4294967295u)) % 32u));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, global2.a.x))), arg_1.d).d.a.x, arg_1.b.x))));
    var var_3 = Struct_1(39532u, 31967u, -global4.c, global4.d);
    global3 = global4.a;
    return Struct_1(var_3.b, global1.a, -10699i, !(!global1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(global0[_wgslsmith_index_u32(global4.b, 8u)], func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-818f, global2.a.x)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(global2.a.yz)), vec2<f32>(global2.a.x, global2.a.x), vec2<bool>(false, true)))), Struct_2(global2.a.yz)), global2.a.zz);
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_div_f32(745f, -360f), _wgslsmith_f_op_f32(sign(-1361f))));
    global3 = ~1u;
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(global2.a)));
    var var_1 = Struct_5(Struct_4(vec3<i32>(1i, ~abs(-1i), ~global1.c >> (_wgslsmith_dot_vec3_u32(u_input.a.ywy, u_input.a.yxx) % 32u)), _wgslsmith_f_op_vec3_f32(global2.a.yww - vec3<f32>(_wgslsmith_f_op_f32(func_2(0u, vec4<f32>(1519f, -438f, var_0.a.x, global2.a.x))), _wgslsmith_f_op_f32(floor(var_0.a.x)), _wgslsmith_f_op_f32(ceil(-906f)))), vec2<bool>(true, _wgslsmith_f_op_f32(global2.a.x + global2.a.x) == _wgslsmith_f_op_f32(select(1059f, 279f, true))), Struct_2(_wgslsmith_f_op_vec2_f32(step(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, var_0.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(~(~(-2147483647i)), 2147483647i), var_1.a.a.xy, func_4(!(!vec3<bool>(true, false, var_1.a.c.x)), var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_0.a.x) - global2.a.xy))).d.x));
}

