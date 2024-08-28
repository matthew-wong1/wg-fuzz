struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(30711i, -23014i, -1i), vec3<i32>(2147483647i, 1i, 10567i), vec3<i32>(1i, 42309i, 1i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(2147483647i, i32(-2147483648), 99714i), vec3<i32>(-11383i, 12320i, 0i), vec3<i32>(-30745i, -44378i, -7246i), vec3<i32>(i32(-2147483648), 39062i, 2735i), vec3<i32>(22870i, 2147483647i, -49899i), vec3<i32>(-1i, 1i, 31263i), vec3<i32>(i32(-2147483648), -45591i, 0i), vec3<i32>(-1i, 66904i, -25061i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(22884i, 11922i, -47663i), vec3<i32>(1i, 7806i, 70208i), vec3<i32>(i32(-2147483648), 13288i, 1i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(2147483647i, 1i, 67567i), vec3<i32>(33529i, -1i, 15593i), vec3<i32>(i32(-2147483648), -22054i, 5989i), vec3<i32>(9519i, -66905i, 21881i), vec3<i32>(0i, i32(-2147483648), -7559i));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = Struct_3(arg_0.a || global2.a.x, vec3<bool>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.c.x, global0.c.x), global0.c.x) == arg_0.c.x, false, global2.a.x), arg_0.c, _wgslsmith_f_op_f32(1131f * -160f));
    global1 = array<vec3<i32>, 22>();
    global1 = array<vec3<i32>, 22>();
    var var_0 = global2.a.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d, 1f)) * _wgslsmith_f_op_f32(279f - _wgslsmith_f_op_f32(806f - 1419f))), global0.a)), 450f, arg_0.d, _wgslsmith_f_op_f32(round(arg_0.d)));
    return max(abs(arg_0.c.x), 1u);
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))), -1343f, global2.a.x || true));
    let var_1 = vec4<f32>(global0.d, 909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))), 196f);
    var var_2 = u_input.a.x;
    var var_3 = Struct_3(false, global0.b, vec4<u32>(_wgslsmith_mult_u32(arg_0, select(0u, ~arg_0, all(vec2<bool>(global0.a, true)))), _wgslsmith_mod_u32(30943u, 17503u), arg_0 << ((~60041u << (func_3(Struct_3(false, vec3<bool>(global0.a, global0.a, global2.a.x), global0.c, var_0)) % 32u)) % 32u), ~global0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-463f - _wgslsmith_f_op_f32(step(-965f, global0.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-106f - 1000f), _wgslsmith_f_op_f32(sign(var_1.x))), false)), _wgslsmith_f_op_f32(f32(-1f) * -118f))));
    var_3 = Struct_3(all(vec2<bool>(!select(var_3.a, true, global2.a.x), true)), vec3<bool>(u_input.a.x != ~u_input.a.x, any(!vec4<bool>(global2.a.x, global2.a.x, false, var_3.a)), true), var_3.c << (var_3.c % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.d * var_1.x))))));
    return Struct_3(!(!global0.a), !(!vec3<bool>(all(global0.b), all(vec2<bool>(false, global0.a)), false)), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 213f)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = func_2(21320u);
    var var_0 = Struct_2(arg_2, Struct_1(vec2<bool>(false, true)), Struct_1(select(vec2<bool>(true, true), select(arg_1.a, arg_1.a, vec2<bool>(arg_2.a.x, arg_2.a.x)), !arg_1.a)), countOneBits(_wgslsmith_div_vec4_i32(abs(-vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -20869i), ~vec4<i32>(23938i, u_input.a.x, u_input.a.x, u_input.a.x)))), !select(global2.a, !(!arg_1.a), global2.a.x));
    var var_1 = var_0.b;
    let var_2 = -1i;
    global1 = array<vec3<i32>, 22>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!(!vec4<bool>(true, global0.a, true, false)), vec4<bool>(!global2.a.x, any(vec4<bool>(true, true, false, false)), select(global2.a.x, global2.a.x, true), func_1(85532u, Struct_1(global2.a), Struct_1(vec2<bool>(false, global2.a.x)), -400f)), global2.a.x));
    var var_1 = global2.a.x;
    let var_2 = ~(global0.c.x & ~global0.c.x);
    let var_3 = all(select(vec2<bool>(global2.a.x, global2.a.x), !select(vec2<bool>(global2.a.x, var_0.x), select(global0.b.zx, global2.a, true), select(vec2<bool>(false, true), vec2<bool>(false, global0.b.x), true)), !global2.a));
    var var_4 = Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(select(global0.b.zz, vec2<bool>(!var_0.x, func_1(global0.c.x, Struct_1(var_0.zw), Struct_1(vec2<bool>(false, false)), -760f)), false)), Struct_1(!func_2(_wgslsmith_mod_u32(global0.c.x, global0.c.x)).b.xx), abs(vec4<i32>(13206i, 35389i, abs(-6594i), _wgslsmith_div_i32(firstTrailingBit(2147483647i), -52396i))), !var_0.wz);
    let var_5 = Struct_1(select(func_2(_wgslsmith_mod_u32(4294967295u, global0.c.x) >> (global0.c.x % 32u)).b.yx, var_0.xy, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(global0.c.yx, vec2<u32>(0u, 1362u))), global0.c.xx, vec2<u32>(12469u, _wgslsmith_add_u32(global0.c.x, 36914u))), (~vec2<u32>(1u, global0.c.x) >> (vec2<u32>(5871u, 61954u) % vec2<u32>(32u))) << (~(~vec2<u32>(15149u, 42129u)) % vec2<u32>(32u))), var_2);
}

