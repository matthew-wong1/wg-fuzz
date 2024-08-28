struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool;

var<private> global2: Struct_4;

var<private> global3: vec4<f32> = vec4<f32>(-185f, 1129f, 821f, 1097f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(465f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global3.x)))));
    var var_1 = ~(vec2<u32>(global2.a.c, 4294967295u) ^ vec2<u32>(select(1u, 0u, global2.a.b.x), global2.b.x)) | ((vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2.a.a), global2.b.xz)) | vec2<u32>(u_input.a.x, 51727u)) & u_input.a.yy);
    let var_2 = Struct_2(any(vec3<bool>(true, all(vec4<bool>(false, global2.a.b.x, false, true)), select(global2.a.b.x, true, global2.a.b.x))) && (global2.a.b.x || false), Struct_1(4294967295u, vec3<bool>(!(global3.x != global3.x), true, all(vec4<bool>(false, true, global2.a.b.x, true))), ~min(u_input.a.x, var_1.x) | firstTrailingBit(var_1.x)), global2.a);
    let var_3 = !(~(~(~u_input.a.x)) == 1u);
    var var_4 = Struct_4(global2.a, ~global2.b, global2.c);
    return _wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(ceil(global3.x)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = !vec4<bool>(global2.a.b.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_div_f32(440f, global3.x)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), -1420f)), true);
    var var_1 = Struct_3(arg_0, Struct_2(any(!select(vec2<bool>(false, arg_0.b.x), global2.a.b.zx, vec2<bool>(global2.a.b.x, true))), Struct_1(76591u, select(arg_0.b, select(var_0.xyw, var_0.xyy, vec3<bool>(false, true, arg_0.b.x)), !global2.a.b), max(u_input.a.x >> (35832u % 32u), _wgslsmith_mult_u32(52165u, arg_0.a))), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, global2.a.a, 1u, arg_0.c), vec4<u32>(24192u, 18831u, arg_0.a, u_input.a.x)), select(!vec3<bool>(true, var_0.x, global2.a.b.x), !vec3<bool>(arg_0.b.x, var_0.x, global2.a.b.x), !vec3<bool>(var_0.x, global2.a.b.x, true)), 0u)), Struct_2(true, Struct_1(1u, arg_0.b, _wgslsmith_add_u32(min(20317u, 4294967295u), arg_0.c)), Struct_1(arg_0.c, var_0.wxx, select(countOneBits(u_input.a.x), ~u_input.a.x, true))));
    let var_2 = global0.x;
    global2 = Struct_4(var_1.a, ~(~reverseBits(~u_input.a)), vec4<i32>(-(_wgslsmith_sub_i32(global2.c.x, 1i) & abs(-2147483647i)), _wgslsmith_div_i32(~global0.x, -_wgslsmith_dot_vec2_i32(global2.c.zx, global0.zy)), 14572i, _wgslsmith_clamp_i32(~_wgslsmith_mult_i32(1i, -54725i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, global0.x, global0.x), vec4<i32>(global0.x, global0.x, global2.c.x, global2.c.x)) & firstTrailingBit(24416i), 21937i)));
    let var_3 = -select(-(~(-55670i)), 2147483647i, false);
    return firstTrailingBit(~global2.b.x);
}

fn func_1() -> Struct_3 {
    var var_0 = global2.b.zz;
    var_0 = vec2<u32>(func_2(Struct_1(~var_0.x, select(vec3<bool>(false, false, global2.a.b.x), global2.a.b, false), ~var_0.x)), global2.a.c) << (~vec2<u32>(select(49529u >> (global2.b.x % 32u), 32496u, true), ~38813u) % vec2<u32>(32u));
    let var_1 = global3.zy;
    global0 = global2.c.wyy;
    var_0 = vec2<u32>(var_0.x, u_input.a.x);
    return Struct_3(global2.a, Struct_2(firstTrailingBit(select(global2.c.x, -2147483647i, true)) > _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, global2.c.x, -1i, -1i), global2.c), global2.a, global2.a), Struct_2(global2.a.b.x, Struct_1(47910u, global2.a.b, 0u), global2.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = func_1();
    var_0 = arg_2;
    global0 = -countOneBits(-_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global2.c.x, 0i), global2.c.yzw));
    var var_1 = ~_wgslsmith_div_u32(u_input.a.x, ~(~u_input.a.x));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, -403f, -1378f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, 1231f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 170f, -606f, global3.x), vec4<bool>(arg_2.b.c.b.x, arg_2.a.b.x, true, true)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global3.x, arg_0.x, -517f))))))));
    return func_1().a;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global1 = func_1().b.a;
    global0 = _wgslsmith_clamp_vec3_i32(arg_2.yxz, vec3<i32>(countOneBits(30146i), firstTrailingBit(-2147483647i), min(-13142i, firstLeadingBit(~arg_2.x))), _wgslsmith_sub_vec3_i32(-(~(vec3<i32>(-69238i, 2712i, global2.c.x) & global2.c.zwy)), vec3<i32>(abs(global2.c.x), ~(~global2.c.x), _wgslsmith_clamp_i32(global0.x, min(global0.x, global0.x), abs(23503i)))));
    global0 = vec3<i32>(-1i) * -arg_2.zxz;
    let var_0 = all(arg_0.c.b.b);
    global0 = vec3<i32>(arg_2.x, 67545i, 0i);
    return Struct_1(u_input.a.x, vec3<bool>(var_0, func_1().c.b.b.x, true), ~global2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global0.x, ~_wgslsmith_mult_i32(-reverseBits(global2.c.x), ~(~33722i)), -2147483647i, ~global0.x);
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-558f, _wgslsmith_f_op_f32(f32(-1f) * -983f), global3.x, _wgslsmith_f_op_f32(sign(global3.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(global3.x, _wgslsmith_div_f32(global3.x, 1742f)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, global3.x, global2.a.b.x))), _wgslsmith_f_op_f32(-530f - 1000f)))));
    var var_1 = ~(~global2.b.xx);
    var var_2 = abs(_wgslsmith_mult_i32(abs(-1i), -(-1i ^ var_0.x) | _wgslsmith_dot_vec2_i32(var_0.yy, ~vec2<i32>(4542i, global2.c.x))));
    var var_3 = Struct_4(func_5(Struct_3(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(634f, 1176f) + vec2<f32>(-475f, global3.x)), global2.c.yyx, func_1(), -global2.c), func_1().b, func_1().c), global2.a.b.xy, min(~max(vec4<i32>(2147483647i, global0.x, 0i, var_0.x), global2.c), -vec4<i32>(60907i, -2147483647i, global0.x, 51682i)), _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(~firstTrailingBit(u_input.a) ^ u_input.a), ~vec4<i32>(~_wgslsmith_mult_i32(global0.x, var_0.x), ~select(1i, -2147483647i, global2.a.b.x), global0.x, -16966i >> (u_input.a.x % 32u)));
    let var_4 = func_1().b;
    global0 = vec3<i32>(firstLeadingBit(global2.c.x) >> (~(~_wgslsmith_dot_vec4_u32(vec4<u32>(28698u, 97586u, 76448u, 4294967295u), vec4<u32>(global2.a.a, global2.a.a, 4294967295u, var_3.a.a))) % 32u), -(~global0.x), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.yxy, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global2.c.yzx, vec3<i32>(-13433i, var_3.c.x, global2.c.x)), select(38208i, var_3.c.x, global2.a.b.x), _wgslsmith_div_i32(var_3.c.x, 2147483647i)), -_wgslsmith_mult_i32(global0.x, global2.c.x), 2147483647i), any(vec4<bool>(all(var_3.a.b), true, any(var_3.a.b.xy), select(true, global2.a.b.x, var_4.a)))), 1f, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(1u, 49613u, 4294967295u, u_input.a.x) | vec4<u32>(0u, 4294967295u, var_3.b.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(70667u, var_3.a.c, 4294967295u, var_1.x), vec4<u32>(var_4.c.a, var_1.x, 4294967295u, var_4.b.a))), ~vec4<u32>(reverseBits(1u), 4294967295u, 0u ^ var_3.b.x, abs(var_4.c.c))), global2.c.zwz);
}

