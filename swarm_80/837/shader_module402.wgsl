struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(global0.d << (select(vec2<u32>(u_input.c.x, u_input.b), ~vec2<u32>(u_input.a, u_input.b), global0.a.b.yz) % vec2<u32>(32u)), global0.d), -1i);
    let var_1 = firstTrailingBit(u_input.c.x);
    let var_2 = u_input.c.zz;
    return 4294967295u;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(1u, ~u_input.b) > _wgslsmith_div_u32(~4294967295u, u_input.b), global0.b.a.b));
    var var_1 = vec2<u32>(~(~func_3(Struct_1(false, global0.c.b), select(vec4<bool>(false, var_0.a.a, true, false), vec4<bool>(false, var_0.a.b.x, var_0.a.a, global0.b.a.a), false), global0.b)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(u_input.a, u_input.c.x))));
    var var_2 = Struct_4(vec4<u32>(1u, 45388u, u_input.c.x, _wgslsmith_sub_u32(u_input.a, ~u_input.c.x)), var_0.a.b, firstTrailingBit(~(~vec2<u32>(u_input.c.x, u_input.a))));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -263f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1196f)) + -119f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(104f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2538f) * 274f), 277f)));
    let var_4 = Struct_4(vec4<u32>(var_1.x, 1u, var_1.x, ~(~_wgslsmith_mult_u32(3977u, 47059u))), var_0.a.b, u_input.c.xx);
    return Struct_3(Struct_1(var_0.a.b.x, global0.c.b), global0.b, Struct_1(!(!(!var_0.a.b.x)), select(var_4.b, !(!var_0.a.b), false)), reverseBits(firstLeadingBit(_wgslsmith_sub_vec2_i32(~vec2<i32>(11326i, global0.d.x), global0.d << (vec2<u32>(var_2.a.x, 4294967295u) % vec2<u32>(32u))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    global0 = func_2();
    global0 = func_2();
    let var_0 = select(!(!(!global0.b.a.b.yz)), func_2().b.a.b.zx, true);
    global0 = Struct_3(func_2().a, Struct_2(func_2().a), global0.c, ~arg_0.xz);
    let var_1 = func_2().b;
    return Struct_4(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), vec4<u32>(abs(u_input.a), u_input.a, u_input.a, u_input.a ^ 57539u)), vec3<bool>(_wgslsmith_div_i32(abs(2147483647i), ~u_input.e) >= reverseBits(~17008i), global0.b.a.a, false | (!global0.a.a && (var_1.a.a || true))), min(u_input.c.zy, ~vec2<u32>(14737u, _wgslsmith_mult_u32(u_input.c.x, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(u_input.c.x, 4294967295u)), _wgslsmith_clamp_u32(~62363u, ~u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.a)), max(~4294967295u, u_input.a | 79074u), 43874u), countOneBits(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, u_input.a, 1u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.b, 0u, 17767u), vec4<u32>(u_input.c.x, 0u, u_input.b, 45050u)), ~vec4<u32>(43680u, u_input.b, 7024u, 33441u)))), func_1(vec4<i32>(abs(-22241i), global0.d.x, ~u_input.d, 0i) & vec4<i32>(1i, u_input.d, -32413i, global0.d.x)), !all(vec3<bool>(true, !global0.b.a.a, !global0.c.a)), select(select(!(!vec4<bool>(global0.a.b.x, global0.b.a.a, global0.a.b.x, false)), vec4<bool>(select(false, false, false), false && global0.b.a.a, any(vec3<bool>(true, true, global0.c.b.x)), global0.b.a.a), vec4<bool>(!global0.a.b.x, global0.b.a.a, any(vec3<bool>(global0.c.a, global0.b.a.b.x, true)), true)), !(!select(vec4<bool>(global0.a.a, global0.b.a.b.x, true, global0.c.b.x), vec4<bool>(global0.a.a, true, true, true), vec4<bool>(global0.b.a.b.x, global0.c.a, global0.c.a, true))), global0.c.b.x), Struct_1(!(global0.c.a && all(vec3<bool>(global0.a.b.x, false, true))), global0.b.a.b));
    var var_1 = select(!vec4<bool>(var_0.b.c.x >= var_0.a.x, true, false, !global0.a.a), select(var_0.d, var_0.d, var_0.b.b.x), (_wgslsmith_mult_u32(u_input.c.x, ~18555u) >= select(reverseBits(0u), 1u, global0.c.b.x & global0.c.a)) | all(var_0.d));
    global0 = func_2();
    var var_2 = vec3<bool>(true, true, all(vec3<bool>(true, var_0.a.x < var_0.b.c.x, var_0.b.b.x)) && !(select(var_0.d.x, var_0.c, var_1.x) && select(var_1.x, var_1.x, true)));
    let var_3 = u_input.c.yx;
    let var_4 = func_2().b.a;
    let var_5 = ~abs(abs(var_0.b.c | var_0.b.a.yz) >> (abs(vec2<u32>(32079u, 0u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1407f, global0.d.x, firstLeadingBit(i32(-1i) * -26908i), _wgslsmith_mult_u32(~(~(var_0.b.a.x << (1982u % 32u))), ~4294967295u));
}

