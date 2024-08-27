struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_4) -> u32 {
    return max(global0.c.x, ~(~(4294967295u | arg_3.c.x)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(vec2<u32>(34174u, ~func_3(Struct_1(global0.b, 1u, global0.c, global0.c.x), Struct_4(global0.a, global0.b, global0.c, vec2<i32>(global0.d.x, u_input.a), global0.b.wxw), !vec3<bool>(global0.b.x, true, false), Struct_4(global0.a, vec4<bool>(true, false, global0.b.x, false), global0.c, global0.d, vec3<bool>(global0.e.x, global0.e.x, global0.b.x)))), Struct_2(-(~select(vec3<i32>(u_input.a, global0.d.x, -1i), vec3<i32>(u_input.a, -16322i, 29412i), global0.b.wzy)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 29846u), ~vec4<u32>(60695u, global0.c.x, global0.c.x, global0.c.x)) << (min(select(vec4<u32>(global0.c.x, 35785u, 21264u, 61783u), vec4<u32>(global0.c.x, 27967u, global0.c.x, global0.c.x), true), ~vec4<u32>(77646u, 6113u, 1u, global0.c.x)) % vec4<u32>(32u)), vec2<bool>(global0.e.x, global0.e.x && all(vec2<bool>(false, global0.e.x)))), Struct_2(min(~reverseBits(vec3<i32>(u_input.a, 45518i, -44812i)), ~(vec3<i32>(global0.d.x, u_input.a, 2147483647i) << (vec3<u32>(1u, 0u, global0.c.x) % vec3<u32>(32u)))), ~vec4<u32>(global0.c.x, 4294967295u, 1u, 1u), select(select(vec2<bool>(true, false), vec2<bool>(true, true), global0.e.x), vec2<bool>(true, true), 1i <= u_input.a)));
    var var_1 = Struct_2(firstTrailingBit(select(abs(~var_0.c.a), ~vec3<i32>(var_0.b.a.x, global0.d.x, u_input.a), global0.e)), ~(~vec4<u32>(abs(global0.c.x), select(3637u, 44165u, global0.b.x), ~35283u, 10953u)), vec2<bool>(false != all(!vec3<bool>(false, false, var_0.c.c.x)), true));
    let var_2 = max(0u, _wgslsmith_div_u32(109419u, 4294967295u));
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~(~4001u >> ((global0.c.x >> (0u % 32u)) % 32u)), firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_u32(var_0.b.b.xxy, var_0.c.b.zyy)))), _wgslsmith_div_u32(~countOneBits(1162u), 28815u << (select(0u, var_0.c.b.x >> (var_1.b.x % 32u), true) % 32u)));
    var_1 = Struct_2(vec3<i32>((max(global0.d.x, -2147483647i) ^ ~56203i) >> (var_0.a.x % 32u), reverseBits(-23132i), firstTrailingBit(~(~(-1i)))), vec4<u32>(_wgslsmith_sub_u32(func_3(Struct_1(vec4<bool>(var_0.b.c.x, false, global0.b.x, true), 133u, var_0.a, global0.c.x), Struct_4(global0.a, global0.b, vec2<u32>(var_3, global0.c.x), vec2<i32>(0i, u_input.a), global0.e), select(global0.e, global0.b.ywz, true), Struct_4(global0.a, global0.b, vec2<u32>(var_2, 1u), var_0.b.a.zz, vec3<bool>(false, var_0.b.c.x, var_0.b.c.x))), ~var_3), 36883u, _wgslsmith_dot_vec4_u32(~var_1.b, ~(~vec4<u32>(global0.c.x, global0.c.x, global0.c.x, var_2))), _wgslsmith_add_u32(min(var_0.c.b.x, global0.c.x), 610u) & ~(~var_3)), !vec2<bool>(false, !(var_3 >= var_3)));
    return Struct_4(_wgslsmith_f_op_f32(ceil(global0.a)), global0.b, var_1.b.yx, min(global0.d, var_1.a.xy >> (_wgslsmith_add_vec2_u32(abs(global0.c), firstLeadingBit(vec2<u32>(var_2, var_2))) % vec2<u32>(32u))), !select(select(select(global0.e, global0.b.wyw, global0.e), vec3<bool>(false, false, var_1.c.x), !vec3<bool>(false, false, global0.e.x)), global0.e, true));
}

fn func_1() -> Struct_3 {
    var var_0 = 2147483647i;
    var_0 = -1i;
    var var_1 = 0i;
    var var_2 = func_2();
    var var_3 = Struct_2(firstTrailingBit(vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(12822i, var_2.d.x, global0.d.x, -38024i), vec4<i32>(global0.d.x, var_2.d.x, -5447i, 2147483647i)) >> (global0.c.x % 32u), 1i)), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(global0.c.x, 0u, var_2.c.x, global0.c.x), ~vec4<u32>(21839u, 1u, 4294967295u, 55328u))), var_2.b.xw);
    return Struct_3(~var_3.b.xz, Struct_2(abs(vec3<i32>(-1i) * -var_3.a), vec4<u32>(global0.c.x, ~0u, 11299u, ~countOneBits(global0.c.x)), vec2<bool>(abs(global0.c.x) >= countOneBits(var_3.b.x), false)), Struct_2(var_3.a, vec4<u32>(20647u, ~_wgslsmith_mult_u32(var_3.b.x, 50446u), 1u, var_2.c.x), var_2.b.ww));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~78372u, _wgslsmith_add_vec3_i32(countOneBits((vec3<i32>(global0.d.x, 1i, -2147483647i) & vec3<i32>(-1i, -35484i, global0.d.x)) ^ -vec3<i32>(u_input.a, -2147483647i, global0.d.x)), vec3<i32>(abs(21386i) & global0.d.x, u_input.a, ~(-u_input.a))), func_1(), Struct_4(global0.a, global0.b, global0.c, global0.d, select(func_2().e, select(vec3<bool>(true, global0.e.x, true), !global0.e, vec3<bool>(global0.e.x, true, false)), vec3<bool>(select(global0.e.x, global0.e.x, global0.e.x), !global0.e.x, !global0.e.x))));
    let var_1 = var_0.b.x;
    global0 = func_2();
    var var_2 = func_1().b;
    var var_3 = var_2.b.xxw;
    global0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, ~func_2().d.x, _wgslsmith_mult_vec3_i32(firstLeadingBit(-var_0.c.c.a), select(vec3<i32>(-1i) * -var_2.a, vec3<i32>(global0.d.x, _wgslsmith_mult_i32(0i, -25684i), ~var_0.d.d.x), any(func_2().b.www))));
}

