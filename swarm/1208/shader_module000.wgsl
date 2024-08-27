struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(-1122f, true, vec4<bool>(true, false, false, true));

var<private> global3: bool;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec3<f32> {
    let var_0 = Struct_1(global2.a, any(vec4<bool>(!any(global2.c.zww), any(!global2.c.zyy), true, u_input.d < (u_input.d ^ global1.x))), global2.c);
    var var_1 = var_0.a;
    var var_2 = var_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(var_2.a)), var_0.c.x, vec4<bool>(all(vec4<bool>(var_2.c.x, global0.x, false, false)) != any(select(var_0.c, vec4<bool>(var_2.b, global0.x, var_0.b, false), var_0.b)), !(!(!global0.x)), false, !(_wgslsmith_f_op_f32(floor(218f)) >= _wgslsmith_f_op_f32(var_2.a - -745f))));
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-global2.a), 208f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = Struct_1(-1051f, true, select(global2.c, select(arg_0.c, !(!arg_0.c), any(select(vec3<bool>(false, false, true), arg_0.c.wwy, false))), global1.x >= abs(u_input.d)));
    global4 = ~vec4<i32>(-_wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(u_input.b.x, -25404i, -38907i, global4.x)), firstTrailingBit(global4.x << (_wgslsmith_sub_u32(0u, u_input.d) % 32u)), global4.x, u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1428f)))), _wgslsmith_f_op_f32(f32(-1f) * -293f), global2.a))));
    global0 = select(vec3<bool>(global2.c.x, any(global2.c.wxz), (_wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, global4.x, -2147483647i, u_input.a), u_input.b) << (_wgslsmith_div_u32(u_input.e.x, 66481u) % 32u)) > u_input.c), !select(vec3<bool>(global1.x > 1u, false, global0.x && false), select(vec3<bool>(false, global0.x, false), vec3<bool>(var_1.c.x, false, true), true), select(var_1.c.wyz, var_1.c.xyy, true)), global2.b);
    return 4294967295u;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(global2.a)), global2.c.x, global2.c);
    global4 = abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, 22120i, 2147483647i, -2147483647i)), min(u_input.b, -vec4<i32>(5281i, -49143i, 32638i, global4.x))) | u_input.b);
    let var_1 = ~firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(2058u, 0u, 57257u, 6377u), vec4<u32>(u_input.e.x, 18153u, u_input.d, 0u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, u_input.d, global1.x, 70708u), vec4<u32>(15177u, 45843u, global1.x, 0u)), (vec4<u32>(u_input.d, u_input.d, 4294967295u, global1.x) & vec4<u32>(64101u, 29240u, 4294967295u, global1.x)) ^ select(vec4<u32>(u_input.e.x, 0u, 153u, global1.x), vec4<u32>(global1.x, u_input.d, 62139u, global1.x), false)));
    let var_2 = var_0;
    var var_3 = firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(select(u_input.e.x, min(var_1.x, 70463u), any(vec3<bool>(false, true, var_0.b))), func_3(Struct_1(-797f, global0.x, var_0.c))), _wgslsmith_div_u32(7036u, _wgslsmith_sub_u32(_wgslsmith_div_u32(global1.x, 1u), u_input.d)), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.x, var_1.x), abs(u_input.d)), select(71225u, ~var_1.x, any(!var_0.c.yzx))));
    return select(!var_2.c.wy, var_2.c.xz, 725f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_2.a, global2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1528f, global2.a, global2.a)))));
    global2 = Struct_1(var_0.x, any(select(!func_2(), func_2(), true)), vec4<bool>(true, global2.b, any(global2.c.yx), global2.c.x));
    let var_1 = Struct_1(-630f, (~(-10369i) ^ global4.x) == u_input.b.x, select(select(vec4<bool>(global2.b, global2.b, false, !global0.x), !select(global2.c, global2.c, vec4<bool>(false, false, false, global2.b)), 3386i > _wgslsmith_dot_vec4_i32(vec4<i32>(-62839i, global4.x, u_input.b.x, u_input.a), u_input.b)), !(!select(vec4<bool>(global0.x, true, false, global2.b), vec4<bool>(true, false, global0.x, false), vec4<bool>(true, false, true, false))), vec4<bool>(true, global0.x, !all(global2.c), func_2().x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.x + -1170f), all(vec2<bool>(var_1.c.x && true, _wgslsmith_div_f32(global2.a, var_0.x) != -1369f)), vec4<bool>(false, var_1.c.x, !(!global0.x && true), false));
    global3 = all(var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(vec3<i32>(_wgslsmith_div_i32(46043i, 2147483647i), -1i, _wgslsmith_div_i32(9064i, -1i))), -(vec3<i32>(16761i, 30593i, u_input.b.x) << ((vec3<u32>(global1.x, global1.x, u_input.e.x) | vec3<u32>(u_input.d, global1.x, 4294967295u)) % vec3<u32>(32u))), true != ((37926u >> (global1.x % 32u)) != global1.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x << (global1.x % 32u), global1.x, ~8971u), vec3<u32>(~0u, ~0u, reverseBits(u_input.e.x))), vec3<u32>(func_3(var_1), u_input.d << (19382u % 32u), 32387u)), firstTrailingBit(u_input.c), vec3<f32>(global2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_1()).x)), global2.a));
}

