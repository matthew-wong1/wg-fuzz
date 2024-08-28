struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = reverseBits(u_input.a);
    let var_1 = abs(firstLeadingBit(vec3<i32>(-30040i, select(arg_1, 45757i, true), min(i32(-1i) * -18300i, arg_2.c.a >> (var_0.x % 32u)))));
    let var_2 = 0i;
    let var_3 = Struct_2(vec4<bool>(any(!select(vec3<bool>(arg_2.a.x, false, arg_2.a.x), arg_2.a.wyy, arg_2.a.ywx)), !arg_2.a.x, all(vec3<bool>(false, arg_1 < 77865i, true)), !arg_2.a.x && (34778u >= global0.x)), var_0.xxy, Struct_1(arg_0, arg_1));
    var var_4 = Struct_1(_wgslsmith_div_i32(23234i, ~arg_0), 1i >> (global0.x % 32u));
    return 1000f;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_2(vec4<bool>(!(any(vec4<bool>(false, false, false, false)) | true), _wgslsmith_f_op_f32(func_3(firstLeadingBit(arg_0.x), i32(-1i) * -1i, Struct_2(vec4<bool>(false, true, false, false), vec3<u32>(global0.x, global0.x, 35078u), Struct_1(arg_0.x, -1i)))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-691f + 1453f), 1f)), false, true), reverseBits(~vec3<u32>(firstTrailingBit(64913u), ~0u, reverseBits(51807u))), Struct_1(reverseBits(select(arg_0.x, _wgslsmith_mult_i32(-1i, 0i), any(vec4<bool>(false, false, true, true)))), arg_0.x));
    var var_1 = true;
    var_1 = var_0.a.x;
    let var_2 = select(!var_0.a.yxw, !select(var_0.a.yww, var_0.a.zyw, false == any(var_0.a.yzx)), var_0.a.zzz);
    global0 = vec3<u32>(~reverseBits(16141u), u_input.a.x, global0.x) | (vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 44840u), 1u << ((var_0.b.x << (global0.x % 32u)) % 32u), abs(_wgslsmith_mod_u32(4294967295u, global0.x))) >> (vec3<u32>(var_0.b.x, u_input.a.x, ~abs(129992u)) % vec3<u32>(32u)));
    return Struct_2(!(!(!var_0.a)), ~countOneBits(abs(vec3<u32>(u_input.a.x, global0.x, global0.x))), Struct_1(var_0.c.b, var_0.c.a));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> bool {
    global0 = u_input.a.yzx;
    let var_0 = _wgslsmith_f_op_f32(step(-259f, 1000f));
    global0 = u_input.a.wzz;
    let var_1 = var_0;
    var var_2 = Struct_2(vec4<bool>(func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(-35219i, arg_1.c.a) ^ vec2<i32>(arg_0, 1i), -vec2<i32>(arg_0, -55492i), -vec2<i32>(arg_0, arg_0))).a.x, true, select(all(arg_1.a.wxz) == select(arg_3, arg_3, false), func_2(vec2<i32>(0i, arg_0)).a.x, all(arg_1.a.zz)), !(!arg_3) & any(vec2<bool>(arg_3, arg_1.a.x))), vec3<u32>(firstTrailingBit(~4294967295u), min(4294967295u, 63864u), _wgslsmith_mod_u32(arg_1.b.x, 0u)) >> (arg_1.b % vec3<u32>(32u)), arg_1.c);
    return var_2.a.x;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    global0 = u_input.a.xyz;
    var var_0 = false;
    global0 = u_input.a.yww;
    global0 = ~u_input.a.zxy;
    var_0 = any(!vec4<bool>(!select(false, false, false), true, all(vec4<bool>(true, true, true, true)), select(true, 2147483647i == arg_0.b, true)));
    return vec3<bool>(all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), any(vec4<bool>(false, false, true, true))), vec2<bool>(arg_0.b != 2147483647i, true), true)), all(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec3<bool>(func_4(~0i, func_2(vec2<i32>(arg_0.b, 2147483647i)), select(15316u, global0.x, true), true), true, false)));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: u32) -> f32 {
    var var_0 = arg_0;
    var var_1 = func_2(arg_2.b.yy);
    let var_2 = 4294967295u;
    let var_3 = Struct_1(1i, _wgslsmith_dot_vec3_i32(-arg_2.b, arg_2.b));
    global0 = var_1.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_5(-1000f, all(func_1(Struct_1(-1i, -2147483647i))) & true, Struct_3(vec2<i32>(1i, 1i), -vec3<i32>(0i, -30524i, 2147483647i), func_2(firstLeadingBit(vec2<i32>(1i, 0i))), ~vec2<i32>(1i, 1i)), ~reverseBits(min(global0.x, 0u)))), ~1u, countOneBits(-45351i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, 1i), 2147483647i, i32(-1i) * -38668i));
}

