struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-948f, -275f, 762f);

var<private> global1: bool = true;

var<private> global2: i32;

var<private> global3: array<vec4<f32>, 2>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = false;
    var var_1 = countOneBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(-53490i, u_input.b.x), vec2<i32>(-46912i, 1i), global4.b.x)), reverseBits(vec2<i32>(-2147483647i, -51841i)))) ^ reverseBits(_wgslsmith_dot_vec2_i32(firstLeadingBit(reverseBits(u_input.b)), vec2<i32>(1i, 1i)));
    var var_2 = arg_0;
    var var_3 = Struct_1(!vec4<bool>(global0.x < _wgslsmith_f_op_f32(min(-1031f, 899f)), true, select(true, global4.c.x, var_0 & arg_0.a.x), any(select(var_2.a, vec4<bool>(false, arg_0.b.x, arg_0.c.x, false), true))), select(var_2.a.wxx, var_2.a.yxy, true), vec3<bool>((~u_input.c > (u_input.d ^ 16603u)) && global4.c.x, u_input.d < abs(u_input.c), !var_0));
    var var_4 = arg_0;
    return u_input.e.yz;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!global4.a, global4.c, !global4.a.xyx);
    var var_1 = ~u_input.b ^ _wgslsmith_sub_vec2_i32(max(min(-u_input.e.yy, u_input.b), u_input.b), select(vec2<i32>(-u_input.e.x, u_input.e.x << (47948u % 32u)), _wgslsmith_div_vec2_i32(func_3(Struct_1(vec4<bool>(false, var_0.c.x, true, true), vec3<bool>(var_0.a.x, global4.a.x, true), vec3<bool>(true, global4.c.x, var_0.c.x))), u_input.e.zz & vec2<i32>(1i, u_input.b.x)), !(!vec2<bool>(true, global4.a.x))));
    global1 = (select(~1u, _wgslsmith_mod_u32(u_input.d >> (u_input.d % 32u), u_input.d), !select(var_0.c.x, false, false)) << (35216u % 32u)) == 4294967295u;
    let var_2 = Struct_1(var_0.a, var_0.a.yzy, select(select(vec3<bool>(select(var_0.a.x, global4.b.x, var_0.b.x), true, true), select(!vec3<bool>(var_0.c.x, true, true), vec3<bool>(global4.b.x, true, false), vec3<bool>(true, global4.c.x, false)), true), select(vec3<bool>(true & var_0.b.x, global4.b.x, true), !var_0.a.yxw, !(!var_0.c.x)), !select(var_0.a.ywz, !vec3<bool>(var_0.a.x, false, false), any(vec3<bool>(global4.c.x, false, global4.c.x)))));
    global2 = -20671i;
    return Struct_1(var_2.a, var_2.a.yyx, !select(!select(var_2.b, var_0.c, var_0.b), !(!vec3<bool>(global4.b.x, var_2.b.x, var_0.c.x)), select(vec3<bool>(true, false, false), select(vec3<bool>(global4.c.x, global4.a.x, false), var_0.a.wyw, vec3<bool>(true, true, true)), !global4.c)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global4 = func_2();
    var var_0 = ~_wgslsmith_mod_vec3_i32(u_input.e | u_input.e, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -26943i, 8170i), vec3<i32>(u_input.b.x, -63370i, u_input.b.x), u_input.e), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x, 23672i, u_input.e.x), u_input.e)));
    let var_1 = Struct_1(func_2().a, global4.b, !select(select(global4.a.xzy, !vec3<bool>(global4.a.x, true, true), !global4.c), global4.b, !(!global4.a.zwz)));
    global4 = func_2();
    var_0 = ~firstLeadingBit(vec3<i32>(-5192i, ~u_input.b.x, countOneBits(u_input.b.x))) >> (max(min(min(vec3<u32>(67705u, 27039u, 0u), vec3<u32>(4294967295u, u_input.a, u_input.a)) >> (~vec3<u32>(4294967295u, u_input.c, u_input.c) % vec3<u32>(32u)), reverseBits(~vec3<u32>(u_input.a, u_input.c, u_input.d))), (~vec3<u32>(4294967295u, 4294967295u, 27130u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(48542u, u_input.c, 1u), vec3<u32>(u_input.c, u_input.d, u_input.a)) % vec3<u32>(32u))) & abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 29022u, 1u), vec3<u32>(u_input.a, u_input.c, 38635u)))) % vec3<u32>(32u));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1(982f);
    global3 = array<vec4<f32>, 2>();
    global1 = !all(global4.b);
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.zz);
    let var_1 = Struct_1(global4.a, vec3<bool>(func_2().a.x, global4.c.x, (_wgslsmith_sub_u32(4294967295u, u_input.a) & ~1u) > reverseBits(u_input.d)), func_1(1855f).a.zyw);
    let var_2 = var_1.a;
    global1 = true & select(var_1.c.x, !global4.a.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(721f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2431f + 368f) + var_0.x)))), reverseBits(countOneBits(u_input.e.x)), max(~4294967295u, countOneBits(92942u)), -54721i);
}

