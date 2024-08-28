struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(u_input.a.zx, ~(~vec2<u32>(abs(arg_2), 26967u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(arg_1.a);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(433f);
    var var_1 = ~_wgslsmith_mod_vec3_u32(abs(u_input.a.zxw), u_input.a.zww);
    global0 = Struct_2(select(global0.a, vec4<bool>(false, _wgslsmith_f_op_f32(trunc(-2052f)) > global0.b.a, global0.a.x, global0.a.x), vec4<bool>(any(select(global0.a.zz, global0.a.xz, true)), any(vec2<bool>(global0.a.x, false)) && true, !(u_input.a.x < 0u), true)), func_3(~(u_input.a.xx ^ func_2(global0.c, Struct_2(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), var_0, global0.b), 7288u, global0.b)), Struct_1(_wgslsmith_f_op_f32(1081f * _wgslsmith_f_op_f32(var_0.a + -1670f))), ~(~u_input.a.wxx) ^ vec3<u32>(55467u, 29214u, 4547u), global0.c), var_0);
    var var_2 = func_3(func_2(var_0, Struct_2(select(select(vec4<bool>(true, global0.a.x, global0.a.x, false), vec4<bool>(global0.a.x, true, false, true), vec4<bool>(global0.a.x, false, false, true)), !vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), true), Struct_1(200f), func_3(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.xy), Struct_1(global0.c.a), abs(vec3<u32>(4294967295u, 86382u, 1u)), func_3(u_input.a.zy, var_0, u_input.a.yzy, global0.c))), var_1.x, func_3(vec2<u32>(1u, var_1.x ^ 0u), Struct_1(_wgslsmith_div_f32(139f, 361f)), vec3<u32>(var_1.x, u_input.c, select(u_input.a.x, var_1.x, global0.a.x)), func_3(_wgslsmith_clamp_vec2_u32(var_1.yy, var_1.yz, vec2<u32>(38070u, 1u)), func_3(vec2<u32>(0u, 1u), global0.b, vec3<u32>(26877u, var_1.x, var_1.x), var_0), u_input.a.yyy, Struct_1(1388f)))), global0.b, ~min(~(u_input.a.zzz | u_input.a.yzz), select(_wgslsmith_mod_vec3_u32(u_input.a.wwz, u_input.a.wwz), ~u_input.a.wzz, global0.a.xxw)), global0.b);
    let var_3 = false || global0.a.x;
    return func_3(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(func_2(Struct_1(var_0.a), Struct_2(vec4<bool>(false, true, false, true), global0.c, var_0), var_1.x, Struct_1(global0.c.a)).x << (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.wy) >> (u_input.a.x % 32u))), Struct_1(-409f), vec3<u32>(_wgslsmith_mod_u32(u_input.c, 34594u), var_1.x, 1u), func_3(select(vec2<u32>(~u_input.c, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, var_1.x), u_input.a.xw), select(!vec2<bool>(var_3, var_3), select(global0.a.zy, global0.a.yw, global0.a.x), all(vec3<bool>(true, global0.a.x, true)))), func_3(~vec2<u32>(var_1.x, u_input.c), var_0, ~vec3<u32>(86186u, u_input.a.x, 1u), func_3(~vec2<u32>(u_input.a.x, 115575u), func_3(vec2<u32>(u_input.a.x, var_1.x), global0.b, vec3<u32>(var_1.x, u_input.c, 428u), global0.b), reverseBits(u_input.a.wzw), Struct_1(var_2.a))), u_input.a.wzz, func_3(var_1.zy, func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(1064u, 0u)), func_3(vec2<u32>(1u, 5374u), Struct_1(610f), u_input.a.xww, global0.b), vec3<u32>(0u, u_input.c, 497u), var_0), vec3<u32>(0u, 1u, 4294967295u) >> (vec3<u32>(1u, 1u, u_input.a.x) % vec3<u32>(32u)), func_3(~vec2<u32>(57716u, u_input.c), Struct_1(-2226f), u_input.a.yyz, func_3(vec2<u32>(0u, 18972u), Struct_1(var_2.a), vec3<u32>(22590u, u_input.a.x, u_input.a.x), Struct_1(326f))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> bool {
    let var_0 = Struct_1(global0.b.a);
    let var_1 = max(u_input.a.zx, select(u_input.a.zy, _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, 14685u)), vec2<u32>(u_input.c, 27735u)) & vec2<u32>(u_input.a.x ^ u_input.a.x, 32557u), false));
    global0 = arg_0;
    let var_2 = any(!vec3<bool>(true, global0.a.x, all(select(arg_0.a, arg_0.a, vec4<bool>(arg_0.a.x, arg_1, arg_1, arg_1)))));
    global0 = Struct_2(vec4<bool>(var_2, true, true, _wgslsmith_div_i32(-38976i, -2147483647i) > u_input.b.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2643f + _wgslsmith_f_op_f32(f32(-1f) * -535f)))), func_3(var_1, var_0, u_input.a.xxy, func_1()));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec4<bool>(global0.a.x, func_4(Struct_2(vec4<bool>(true, global0.a.x, global0.a.x, false), func_1(), global0.b), all(select(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, true), global0.a.x))), true, any(vec3<bool>(global0.a.x, !global0.a.x, !global0.a.x))), Struct_1(_wgslsmith_f_op_f32(-global0.c.a)), global0.b);
    var var_0 = ~u_input.a.wy;
    let var_1 = func_1();
    var var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c.a, var_1.a, var_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(452f, var_1.a, -158f) + vec3<f32>(-123f, -1282f, 1726f)))) * vec3<f32>(_wgslsmith_f_op_f32(var_1.a * 2433f), global0.c.a, _wgslsmith_f_op_f32(step(-743f, -106f))))));
    var var_4 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-_wgslsmith_div_i32(-53119i, u_input.b.x), _wgslsmith_mod_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-6173i, -25846i, u_input.b.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x))), -2147483647i)), 1u);
}

