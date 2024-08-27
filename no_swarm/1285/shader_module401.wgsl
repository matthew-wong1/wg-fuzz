struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_0 = select(!select(vec2<bool>(select(false, true, true), any(vec2<bool>(true, arg_1.d))), vec2<bool>(all(arg_1.b.ww), arg_1.b.x), arg_1.b.zw), select(!select(vec2<bool>(arg_1.d, false), select(vec2<bool>(false, arg_1.b.x), arg_1.b.zz, arg_1.b.zy), arg_1.b.wx), arg_0.d.b.b.yw, !(!(!arg_0.c.a.b.yw))), select(!all(!arg_0.d.a.b.xyy), arg_0.c.a.d, select(all(select(vec3<bool>(arg_0.d.b.d, false, true), vec3<bool>(true, true, true), arg_1.b.wzz)), arg_1.d, false)));
    let var_1 = _wgslsmith_mult_i32(abs(arg_0.e.a.a), global0[_wgslsmith_index_u32(28695u, 24u)] ^ 30558i);
    var var_2 = !((true | all(select(arg_0.e.b.b, arg_1.b, arg_1.b.x))) == var_0.x);
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<u32>(u_input.a.x, reverseBits(u_input.d.x), u_input.a.x, max(abs(u_input.a.x), 4294967295u >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, u_input.d.x) % 32u))) >> ((vec4<u32>(~u_input.a.x | _wgslsmith_clamp_u32(u_input.a.x, 14214u, 0u), _wgslsmith_mod_u32(28614u, 1u), u_input.d.x, func_3(Struct_3(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), 573f, Struct_2(Struct_1(u_input.c, vec4<bool>(true, false, true, false), vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, 1u), false), Struct_1(u_input.c, vec4<bool>(false, false, false, false), vec4<u32>(1u, 36447u, u_input.a.x, u_input.d.x), true)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(15313u, 24u)], vec4<bool>(false, false, true, false), vec4<u32>(u_input.d.x, 1u, u_input.a.x, 41836u), true), Struct_1(u_input.b, vec4<bool>(true, true, false, false), vec4<u32>(60851u, 0u, u_input.a.x, u_input.a.x), false)), Struct_2(Struct_1(-32695i, vec4<bool>(false, false, false, true), vec4<u32>(u_input.a.x, u_input.d.x, 12454u, u_input.d.x), false), Struct_1(30410i, vec4<bool>(true, false, false, false), vec4<u32>(1u, 72053u, u_input.d.x, 32878u), true))), Struct_1(1i, vec4<bool>(false, false, false, true), vec4<u32>(u_input.a.x, u_input.d.x, 4294967295u, u_input.a.x), true), _wgslsmith_f_op_f32(1199f - -430f))) | firstTrailingBit(~(~vec4<u32>(108041u, 64343u, 0u, u_input.a.x)))) % vec4<u32>(32u));
    var var_1 = !vec2<bool>(all(vec4<bool>(false, true, false, false)) && all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), all(vec3<bool>(true, true, true)));
    var var_2 = !select(!vec3<bool>(!var_1.x, select(var_1.x, true, true), any(vec2<bool>(false, true))), !vec3<bool>(any(vec2<bool>(false, var_1.x)), true, false), true);
    var var_3 = Struct_1(u_input.b << ((_wgslsmith_mod_u32(select(39741u, 1u, false), 1u) | 1u) % 32u), !(!select(select(vec4<bool>(false, var_2.x, var_1.x, true), vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, true, true)), vec4<bool>(true, true, var_2.x, var_2.x), var_1.x)), _wgslsmith_sub_vec4_u32(var_0, var_0), any(!vec4<bool>(!var_1.x, true, all(var_2.xy), true)));
    var_2 = var_3.b.xzx;
    return Struct_1(-1i, !select(!vec4<bool>(true, true, var_1.x, true), var_3.b, select(select(var_3.b, var_3.b, vec4<bool>(false, true, true, var_2.x)), vec4<bool>(var_2.x, true, var_1.x, var_2.x), vec4<bool>(var_1.x, true, false, true))), abs(vec4<u32>(1u, reverseBits(var_3.c.x), ~var_0.x & reverseBits(41039u), var_0.x)), true & select(!var_2.x, select(true, true, var_1.x || true), true | select(var_2.x, true, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(13931u, 24u)], u_input.b), vec2<i32>(0i, u_input.b)), ~(-2147483647i)), vec2<i32>(0i, _wgslsmith_clamp_i32(-40609i, global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.c))) & 1i, -2147483647i);
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    let var_1 = 1f;
    global0 = array<i32, 24>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), Struct_1(-(~_wgslsmith_clamp_i32(u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], -1i)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<u32>(_wgslsmith_sub_u32(func_2().c.x, u_input.d.x), ~u_input.a.x << (35141u % 32u), 1u, 1u), true));
    global0 = array<i32, 24>();
    let var_1 = false;
    var var_2 = vec2<i32>(-1i, 32425i);
    var var_3 = Struct_2(var_0.b, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.a.a, -2147483647i, ~var_3.b.a), -_wgslsmith_mult_vec3_i32(vec3<i32>(4582i, 72569i, 10717i), vec3<i32>(var_0.b.a, 2147483647i, u_input.c))));
}

