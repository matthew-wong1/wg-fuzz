struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3 = Struct_3(Struct_1(0u, true), Struct_2(vec4<u32>(20607u, 97u, 70614u, 42088u), vec3<bool>(true, false, true), Struct_1(75683u, false), vec3<i32>(-12249i, 61357i, 28642i)));

var<private> global2: vec4<i32> = vec4<i32>(1i, 0i, 2147483647i, i32(-2147483648));

var<private> global3: bool;

var<private> global4: vec4<f32> = vec4<f32>(2440f, 669f, -207f, 1052f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2056f, 1117f, global4.x, -2123f))), vec4<f32>(global4.x, _wgslsmith_f_op_f32(trunc(1029f)), -268f, _wgslsmith_f_op_f32(-412f + 355f)))) * vec4<f32>(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(select(201f, _wgslsmith_f_op_f32(abs(global4.x)), all(global1.b.b)))), -1403f, 1061f, global4.x));
    let var_0 = _wgslsmith_div_i32(-_wgslsmith_clamp_i32(global1.b.d.x, -global0.b.d.x, reverseBits(abs(-36496i))), firstLeadingBit(-17158i));
    global3 = all(!select(global1.b.b.xy, !vec2<bool>(global1.b.c.b, global0.b.c.b), select(vec2<bool>(global0.b.b.x, global0.b.b.x), global0.b.b.zy, all(vec4<bool>(global1.b.b.x, global0.a.b, global0.a.b, true)))));
    var var_1 = vec4<bool>(!select(global0.b.b.x, true, any(select(global1.b.b, global1.b.b, false))), global1.a.b, all(!global0.b.b) != any(global0.b.b), any(!vec2<bool>(global0.b.b.x, true | global0.a.b)));
    global2 = vec4<i32>(firstTrailingBit(var_0) & global2.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a, global1.b.d.x), 0i), vec2<i32>(~(-2147483647i), -39905i)), ~reverseBits(~(global2.x | 1i)), global0.b.d.x);
    return 95242u;
}

fn func_2() -> Struct_1 {
    let var_0 = global0.b;
    global0 = Struct_3(global1.a, Struct_2(var_0.a, global0.b.b, Struct_1(~func_3(), any(!vec2<bool>(global0.b.c.b, true))), vec3<i32>(abs(-global1.b.d.x), abs(u_input.e.x), _wgslsmith_clamp_i32(abs(2147483647i), 10897i & global1.b.d.x, _wgslsmith_clamp_i32(0i, global1.b.d.x, 2147483647i)))));
    var var_1 = vec4<bool>(all(!select(!var_0.b.zx, select(vec2<bool>(true, global1.b.c.b), vec2<bool>(global1.a.b, global0.a.b), global0.b.b.x), vec2<bool>(true, true))), (-60516i ^ min(u_input.d, _wgslsmith_dot_vec3_i32(global2.ywx, vec3<i32>(global1.b.d.x, var_0.d.x, -1i)))) <= _wgslsmith_mult_i32(global0.b.d.x, i32(-1i) * -7984i), global0.b.b.x != true, any(select(global0.b.b, !(!vec3<bool>(global0.a.b, true, global1.b.c.b)), vec3<bool>(true, global1.a.b & global1.a.b, global0.b.b.x))));
    var_1 = !(!vec4<bool>(true, !(!global1.a.b), false, global1.a.b || all(vec4<bool>(true, var_1.x, var_0.b.x, global1.a.b))));
    global2 = ~(vec4<i32>(-1i) * -vec4<i32>(u_input.d, -u_input.d, -2147483647i, global0.b.d.x));
    return Struct_1(_wgslsmith_add_u32(u_input.c, global1.a.a), var_1.x == false);
}

fn func_1() -> Struct_3 {
    return Struct_3(func_2(), Struct_2(abs(select(global1.b.a, global1.b.a, vec4<bool>(global1.a.b, true, global1.b.c.b, true))) ^ (_wgslsmith_clamp_vec4_u32(global1.b.a, global1.b.a, vec4<u32>(4294967295u, 40483u, 24697u, 1u)) | ~vec4<u32>(4294967295u, 30211u, 26753u, global0.b.a.x)), global0.b.b, Struct_1(_wgslsmith_sub_u32(~u_input.c, 4294967295u), true), ~u_input.e.wzz));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -268f) == global4.x;
    var var_0 = func_1().a;
    let var_1 = func_1();
    global3 = false;
    let var_2 = firstTrailingBit(_wgslsmith_sub_i32(-(global0.b.d.x & _wgslsmith_mult_i32(-11649i, 80893i)), abs(select(2147483647i, _wgslsmith_clamp_i32(global2.x, u_input.e.x, -24573i), global4.x >= global4.x))));
    global2 = u_input.e;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(~global1.b.a.xxy << (max(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 29027u, 30751u), vec3<u32>(6509u, global1.a.a, var_0.a)), var_1.b.a.wyw) % vec3<u32>(32u)), global1.b.a.yxy), global1.b.a.zy, var_1.b.d);
}

