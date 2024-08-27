struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 47171u, 62448u, 63894u), vec3<u32>(4294967295u, 1u, 23100u));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(23086u, 41021u, 29388u, 4294967295u), vec3<u32>(22162u, 23567u, 4665u));

var<private> global2: i32 = -28066i;

var<private> global3: i32 = -1i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(countOneBits(vec4<u32>(32289u, 34302u, 0u, 0u) >> (vec4<u32>(u_input.c, u_input.a.x, 41529u, 0u) % vec4<u32>(32u))), countOneBits(vec3<u32>(global0.a.x, 75825u, u_input.c) ^ global0.b)), 1u, Struct_1(global1.a, ~(~vec3<u32>(u_input.c, global1.a.x, u_input.c))), Struct_1(vec4<u32>(reverseBits(global0.b.x), 4294967295u, ~global1.a.x, firstLeadingBit(global0.a.x)), _wgslsmith_mult_vec3_u32(firstLeadingBit(global1.b), abs(global0.b)))), Struct_2(Struct_1(vec4<u32>(0u, reverseBits(46659u), _wgslsmith_clamp_u32(global1.a.x, global1.a.x, global1.a.x), ~global1.a.x), firstTrailingBit(global1.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(58155u), 1u, 1u, 50574u & u_input.c), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(global1.b.x, global1.a.x, u_input.a.x, global1.b.x)), select(vec4<u32>(global1.b.x, 9812u, 14330u, 4294967295u), global1.a, false))), Struct_1(global0.a, vec3<u32>(1u, 1u, global1.a.x)), Struct_1(vec4<u32>(global0.b.x, global0.b.x, 1u, ~44249u), abs(~vec3<u32>(u_input.c, 0u, u_input.c)))), global1.a.wy | global0.a.zx);
    var var_1 = var_0.b;
    global2 = u_input.b;
    global3 = u_input.b;
    var var_2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, -477f)) + arg_0.x)) * -1144f));
    return 0u;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec3_u32(global1.b, ~vec3<u32>(32614u, func_3(vec4<f32>(1332f, 1264f, -276f, 1079f)) ^ _wgslsmith_mult_u32(43392u, 0u), _wgslsmith_div_u32(1u, ~global0.a.x)));
    let var_1 = Struct_3(Struct_2(Struct_1(vec4<u32>(global1.a.x, ~4294967295u, ~4294967295u, 4294967295u), _wgslsmith_clamp_vec3_u32(min(global1.b, global0.a.wwx), global0.a.yxw, vec3<u32>(u_input.c, u_input.c, global1.a.x))), global0.b.x, Struct_1(vec4<u32>(u_input.a.x, 0u, 1936u, ~4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b.x, 0u, 0u), ~global0.b, global0.b)), Struct_1(~vec4<u32>(var_0.x, 17483u, 20907u, 12099u), global1.b)), Struct_2(Struct_1(vec4<u32>(firstLeadingBit(4092u), _wgslsmith_dot_vec3_u32(global1.a.yww, global1.a.wzy), _wgslsmith_add_u32(global1.b.x, var_0.x), _wgslsmith_add_u32(34762u, global0.b.x)), select(vec3<u32>(1u, global1.b.x, u_input.c), ~global1.b, true)), u_input.a.x, Struct_1(global0.a, global1.b), Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(78517u, global0.a.x, u_input.a.x, 52931u), ~global0.a, global0.a), ~vec3<u32>(global1.b.x, u_input.c, 4294967295u))), ~(~var_0.zx));
    var var_2 = var_1.b.a;
    global3 = firstTrailingBit(-5787i);
    let var_3 = true;
    return var_1.b;
}

fn func_1() -> vec2<u32> {
    var var_0 = func_2();
    var var_1 = !vec2<bool>(true, !(min(u_input.b, u_input.b) != 1i));
    var_1 = !select(!(!select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x))), vec2<bool>(true, !all(vec2<bool>(var_1.x, var_1.x))), true);
    var var_2 = vec4<u32>(~countOneBits(_wgslsmith_mod_u32(~52495u, 1u)), global0.b.x, global1.b.x, ~(1u | var_0.c.a.x));
    global3 = abs(u_input.b);
    return firstTrailingBit(min((vec2<u32>(var_2.x, 4294967295u) << (vec2<u32>(63u, var_0.a.b.x) % vec2<u32>(32u))) >> ((vec2<u32>(global0.b.x, global0.a.x) | global0.b.zy) % vec2<u32>(32u)), vec2<u32>(abs(100236u), ~u_input.c))) & _wgslsmith_add_vec2_u32(var_0.d.a.xx, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~global1.a.xy, select(vec2<u32>(625u, var_0.b), vec2<u32>(0u, 0u), vec2<bool>(false, var_1.x))), vec2<u32>(~var_0.d.b.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~(~(~vec4<u32>(global1.b.x, 4294967295u, u_input.a.x, 7713u))), abs(_wgslsmith_sub_vec3_u32(global1.b, max(vec3<u32>(1u, 18627u, 0u), vec3<u32>(global0.b.x, global1.a.x, u_input.a.x)))) | (global0.b & min(vec3<u32>(global0.a.x, u_input.c, global1.b.x), vec3<u32>(global1.a.x, 46908u, 0u))));
    var var_0 = vec3<bool>(false, all(vec4<bool>((-2147483647i >= u_input.b) | true, true, any(vec2<bool>(true, true)), true)), true);
    var var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -1000f, _wgslsmith_clamp_vec2_u32(firstTrailingBit(func_1()), ~global1.b.zz, ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, global1.b.zz), select(global1.a.wz, vec2<u32>(0u, 4294967295u), var_0.yy))));
}

