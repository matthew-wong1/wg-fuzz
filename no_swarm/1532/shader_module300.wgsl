struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_3) -> bool {
    global0 = !vec3<bool>(any(select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, true), vec2<bool>(global0.x, false), global0.x), select(arg_0.a.a, true, true))), global0.x, !all(select(vec2<bool>(global0.x, arg_3.d.a), vec2<bool>(false, true), false)));
    global0 = select(!(!(!arg_0.d.xyw)), vec3<bool>(!arg_3.c.a | any(vec3<bool>(true, global0.x, false)), true, select(any(arg_0.d), select(true, true, global0.x), true) & arg_3.a.d.x), all(select(arg_0.d.zyx, arg_3.a.d.xzz, true)));
    global0 = vec3<bool>(any(select(select(vec3<bool>(global0.x, false, global0.x), arg_0.d.xxx, arg_3.a.b.a), arg_0.d.xxz, !global0.x)), !any(vec4<bool>(arg_0.d.x, true, false, arg_3.b.a)) || ((~1u << (_wgslsmith_div_u32(arg_3.a.c, 6174u) % 32u)) <= 4294967295u), global0.x);
    return !arg_0.a.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    global0 = vec3<bool>(false, select(!(func_3(Struct_2(Struct_1(arg_1.a), arg_0, u_input.c.x, vec4<bool>(true, arg_1.a, arg_0.a, true)), u_input.b, vec4<u32>(4294967295u, 56348u, 0u, 2080u), Struct_3(Struct_2(Struct_1(true), arg_2, 78175u, vec4<bool>(false, arg_0.a, true, true)), Struct_1(false), arg_1, arg_0)) == true), arg_1.a & select(!global0.x, true, global0.x), reverseBits(u_input.e.x) <= -2147483647i), true);
    var var_0 = arg_2;
    var var_1 = u_input.e.x;
    let var_2 = Struct_2(Struct_1(arg_2.a), Struct_1(((22357i | u_input.e.x) <= abs(u_input.e.x)) | var_0.a), u_input.d.x, select(vec4<bool>(false, true, true, false), !(!select(vec4<bool>(false, arg_0.a, arg_0.a, arg_2.a), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), true)), true));
    var_1 = 25160i;
    return vec2<u32>(_wgslsmith_mod_u32(12133u, abs(~u_input.c.x)) | ~var_2.c, ~_wgslsmith_div_u32(var_2.c, ~u_input.d.x) & 67087u);
}

fn func_1() -> Struct_1 {
    var var_0 = -_wgslsmith_dot_vec3_i32(select(~vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), _wgslsmith_mod_vec3_i32(u_input.e, u_input.e) & u_input.e, !vec3<bool>(true, true, global0.x)), -u_input.e);
    var_0 = ~u_input.e.x;
    let var_1 = !select(vec4<bool>(select(all(vec3<bool>(false, true, global0.x)), false, false), true, global0.x, true), !(!(!vec4<bool>(global0.x, false, global0.x, true))), vec4<bool>(global0.x, !global0.x, any(!vec3<bool>(global0.x, global0.x, false)), any(vec2<bool>(false, global0.x))));
    var var_2 = 53920u;
    var_2 = _wgslsmith_dot_vec2_u32(~select(select(max(vec2<u32>(15016u, u_input.d.x), u_input.c.xy), ~vec2<u32>(45630u, u_input.a), !var_1.x), select(~u_input.c.xz, func_2(Struct_1(global0.x), Struct_1(global0.x), Struct_1(var_1.x)), global0.xy), select(global0.zx, vec2<bool>(false, false), global0.x)), countOneBits(u_input.c.zz));
    return Struct_1(!(!var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~vec2<i32>(-u_input.e.x, u_input.e.x) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(u_input.a, u_input.d.x)), 21598u) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -u_input.e.x, ~u_input.e.x), any(!(!vec3<bool>(true, global0.x, true))));
    global0 = !select(!(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global0.x, global0.x), global0.x)), !select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, global0.x, global0.x))), true);
    let var_1 = ~u_input.c.yx | ~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, countOneBits(u_input.d.x), u_input.c.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.c.x), u_input.c.zz));
    var var_2 = Struct_2(Struct_1(all(select(!vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(false, global0.x, global0.x, false), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(false, global0.x, global0.x, true), true)))), func_1(), min(~(~max(var_1.x, 39098u)), u_input.c.x), !select(select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, true, global0.x, global0.x)), vec4<bool>(global0.x, true, true, false)), vec4<bool>(true, true, func_3(Struct_2(Struct_1(true), Struct_1(global0.x), 4294967295u, vec4<bool>(global0.x, false, global0.x, global0.x)), var_1.x, vec4<u32>(var_1.x, 39620u, 3107u, var_1.x), Struct_3(Struct_2(Struct_1(global0.x), Struct_1(false), u_input.a, vec4<bool>(global0.x, global0.x, global0.x, global0.x)), Struct_1(global0.x), Struct_1(global0.x), Struct_1(global0.x))), true), !(true & global0.x)));
    global0 = var_2.d.wyx;
    let var_3 = true;
    var var_4 = Struct_2(Struct_1(var_3), Struct_1(var_3), ~u_input.d.x, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.b, firstLeadingBit(_wgslsmith_clamp_u32(22843u, 96325u, 4294967295u)), 33157u, 59916u), ~(~func_2(Struct_1(global0.x), Struct_1(true), var_2.b).x), select(vec3<i32>(u_input.e.x, ~(-47221i) & var_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(71411i, var_0.x, u_input.e.x), u_input.e), ~var_0.x, var_0.x)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(1i, var_0.x, 1i), vec3<i32>(1i, var_0.x, u_input.e.x)) ^ min(u_input.e, u_input.e)), select(!vec3<bool>(var_2.b.a, global0.x, var_4.d.x), select(var_2.d.zzx, vec3<bool>(true, true, false), true), var_4.d.zyx)), ~vec4<i32>(u_input.e.x, 1i, 0i, abs(9353i << (var_2.c % 32u))));
}

