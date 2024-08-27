struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, true, false), 0i, 16466u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = vec3<bool>(global0.a.x, !select(all(arg_2.a.zx), true, true), !global0.a.x);
    let var_1 = firstLeadingBit(_wgslsmith_div_i32(~(0i), 29601i));
    global0 = arg_2;
    global0 = Struct_1(select(global0.a, !(!vec3<bool>(true, true, global0.a.x)), select(!(!arg_2.a), vec3<bool>(var_1 > 0i, false, all(global0.a.zy)), select(select(var_0, vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(var_0.x, arg_2.a.x, global0.a.x)), select(global0.a, vec3<bool>(false, global0.a.x, global0.a.x), var_0), global0.a.x || arg_2.a.x))), 2147483647i, 27806u);
    global0 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1257f) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-182f)))), true, var_0.x), ~((i32(-1i) * -24737i) << (_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_2.c, u_input.c, u_input.b, global0.c), vec4<u32>(0u, 37597u, 3519u, arg_2.c)), min(vec4<u32>(u_input.a.x, 402u, 1u, global0.c), vec4<u32>(4294967295u, global0.c, 60460u, 0u))) % 32u)), countOneBits(0u));
    return select(vec4<bool>(!((global0.b & arg_1.x) == -37565i), !select(true, false, true), global0.a.x, global0.a.x), select(vec4<bool>(any(arg_2.a.yz), true, true, global0.a.x), vec4<bool>(false, false && (var_0.x | arg_2.a.x), any(vec3<bool>(var_0.x, arg_2.a.x, false)), any(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), global0.a.x))), true), !arg_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = arg_0;
    global0 = Struct_1(select(arg_2.yzz, !vec3<bool>(all(vec4<bool>(arg_2.x, false, true, false)), true, false), select(arg_0.a, !select(arg_0.a, var_1.a, arg_0.a), vec3<bool>(global0.a.x & false, var_1.a.x || var_1.a.x, !arg_0.a.x))), _wgslsmith_sub_i32(-_wgslsmith_add_i32(-4031i, _wgslsmith_sub_i32(68652i, 14510i)), _wgslsmith_sub_i32(2147483647i, global0.b)), var_1.c);
    var var_2 = false;
    var_2 = -642f != _wgslsmith_f_op_f32(ceil(1000f));
    return vec3<bool>((var_1.b | 1i) < _wgslsmith_dot_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_0.b, 30225i, global0.b), vec4<i32>(var_1.b, 6253i, var_0.b, var_1.b)), vec4<i32>(arg_1, -47150i, arg_1, -8392i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, 2147483647i, -1i) << (vec4<u32>(1965u, 86069u, 34892u, arg_0.c) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 2147483647i, arg_1, 2147483647i), vec4<i32>(arg_0.b, -46824i, 16860i, 1i)))), !(!(!var_0.a.x)), all(func_3(vec3<i32>(var_1.b, var_0.b, var_0.b), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_1.b, global0.b), vec3<i32>(var_0.b, -28962i, 0i)), arg_0).zw) == true);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(func_4(Struct_1(select(select(global0.a, vec3<bool>(false, global0.a.x, true), false), !global0.a, vec3<bool>(false, true, global0.a.x)), -38000i, ~countOneBits(u_input.d)), abs(-28416i), select(!select(vec4<bool>(global0.a.x, false, global0.a.x, true), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, false, global0.a.x, false)), func_3(vec3<i32>(global0.b, global0.b, -1i) & vec3<i32>(global0.b, -1i, global0.b), min(vec3<i32>(-26316i, 0i, global0.b), vec3<i32>(global0.b, -11555i, global0.b)), Struct_1(vec3<bool>(false, true, global0.a.x), -14971i, 20254u)), !select(vec4<bool>(global0.a.x, false, false, false), vec4<bool>(false, global0.a.x, true, global0.a.x), vec4<bool>(global0.a.x, true, true, false)))), -1i, global0.c);
    var var_1 = var_0;
    var_1 = Struct_1(var_1.a, ~countOneBits(_wgslsmith_mult_i32(global0.b, _wgslsmith_mult_i32(var_0.b, var_1.b))), ~9899u);
    var var_2 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(global0.c, u_input.b, global0.c), abs(vec3<u32>(var_0.c, 1u, 1867u)), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(10356u, 0u, u_input.b), firstLeadingBit(vec3<u32>(89433u, global0.c, 10896u)), vec3<u32>(var_1.c, 1u, global0.c))), firstLeadingBit(select(~vec3<u32>(u_input.c, 1u, u_input.d), vec3<u32>(var_0.c, 69862u, 44597u), false)), vec3<u32>(~max(var_0.c, var_0.c), _wgslsmith_div_u32(firstLeadingBit(1u), var_1.c), ~abs(var_1.c)));
    let var_3 = true;
    return var_0.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(!select(vec3<bool>(true, all(arg_2.a.yz), arg_0.x), vec3<bool>(u_input.a.x >= 74837u, true, false), vec3<bool>(any(vec2<bool>(false, arg_2.a.x)), func_4(arg_2, global0.b, vec4<bool>(arg_2.a.x, true, arg_2.a.x, global0.a.x)).x, arg_0.x & false)), max(0i, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2.b, arg_2.b, global0.b), _wgslsmith_sub_i32(global0.b, -2147483647i))), global0.c);
    global0 = arg_2;
    let var_1 = -(~(-_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, -2147483647i, 2147483647i, 50438i), ~vec4<i32>(-2147483647i, global0.b, 0i, 3049i))));
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~(~reverseBits(vec3<u32>(u_input.d, 50521u, u_input.a.x))), max(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.c, arg_2.c, u_input.b), vec3<u32>(global0.c, var_0.c, global0.c)), max(vec3<u32>(4294967295u, 92448u, global0.c), vec3<u32>(1u, var_0.c, 56261u)) ^ vec3<u32>(4294967295u, var_0.c, 4294967295u))), vec3<u32>(max(1u, _wgslsmith_mult_u32(u_input.c, reverseBits(var_0.c))), abs(var_0.c), _wgslsmith_add_u32(~(~0u), _wgslsmith_add_u32(~32481u, var_0.c))), ~firstLeadingBit(select(vec3<u32>(u_input.a.x, 11403u, arg_2.c), abs(vec3<u32>(arg_2.c, 1u, 69104u)), var_0.a)));
    var_0 = arg_2;
    return Struct_1(vec3<bool>(var_0.a.x, true, arg_0.x), ~(~(-min(var_1.x, arg_3))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.x, global0.c, 4294967295u, u_input.a.x)), ~(max(vec4<u32>(u_input.a.x, var_0.c, arg_2.c, 0u), vec4<u32>(14590u, 1u, 4294967295u, 18473u)) & ~vec4<u32>(52051u, 1u, var_0.c, var_0.c))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global0 = func_5(global0.a.zy, 384f, Struct_1(select(!vec3<bool>(global0.a.x, global0.a.x, false), select(global0.a, func_2(), vec3<bool>(global0.a.x, true, true)), global0.a), _wgslsmith_add_i32(max(6571i, ~global0.b), global0.b), 0u), ~global0.b);
    let var_0 = -select(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-14777i, global0.b, global0.b, global0.b), vec4<i32>(29753i, global0.b, global0.b, 67801i))), vec4<i32>(0i, global0.b, 13156i, 1i), !vec4<bool>(!global0.a.x, global0.a.x, !global0.a.x, false));
    return func_5(!vec2<bool>(all(select(vec3<bool>(true, global0.a.x, global0.a.x), global0.a, global0.a)), 61946i >= (var_0.x >> (global0.c % 32u))), 1344f, Struct_1(vec3<bool>(select(true, true, true), global0.a.x, !(true & global0.a.x)), -2147483647i, u_input.a.x), -(i32(-1i) * -35585i) << (~4294967295u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec4<u32>(4294967295u, u_input.b, ~4294967295u, ~(~0u)));
    global0 = Struct_1(global0.a, select(countOneBits(_wgslsmith_clamp_i32(14694i << (global0.c % 32u), abs(global0.b), -global0.b)), global0.b, !global0.a.x), u_input.d);
    var var_0 = Struct_1(select(vec3<bool>(!all(vec4<bool>(true, global0.a.x, true, global0.a.x)), (global0.b >> (4294967295u % 32u)) >= -45259i, global0.a.x), !func_4(func_5(vec2<bool>(false, false), 1000f, Struct_1(global0.a, 2147483647i, global0.c), global0.b), global0.b, vec4<bool>(true, global0.a.x, global0.a.x, true)), func_5(global0.a.xx, -1041f, Struct_1(!global0.a, global0.b ^ global0.b, 4294967295u), 20935i).a.x), global0.b, _wgslsmith_mult_u32(1u, ~u_input.c << (u_input.b % 32u)));
    var_0 = Struct_1(select(vec3<bool>(any(vec3<bool>(var_0.a.x, global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(step(747f, -938f)) == _wgslsmith_f_op_f32(step(-2213f, -1229f)), var_0.a.x), global0.a, !func_2()), global0.b, global0.c);
    var var_1 = vec3<bool>(true, true, !any(vec2<bool>(true, var_0.a.x == var_0.a.x)));
    var var_2 = func_3(~_wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(-14028i), global0.b, 2147483647i ^ global0.b), -(vec3<i32>(var_0.b, -50465i, global0.b) << (vec3<u32>(u_input.b, 1062u, u_input.d) % vec3<u32>(32u)))), vec3<i32>(countOneBits(0i), min(~(i32(-1i) * -2147483647i), 20811i), var_0.b), Struct_1(var_0.a, min((var_0.b << (40336u % 32u)) | (-2147483647i & global0.b), ~(~(-2147483647i))), 4079u)).xx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.c), vec4<f32>(1f, 1f, 1f, 1f), vec4<i32>(~global0.b, var_0.b, 2147483647i, -(_wgslsmith_div_i32(var_0.b, -47547i) << (var_0.c % 32u))), _wgslsmith_add_u32(~1214u, ((29852u >> (1u % 32u)) | ~var_0.c) ^ _wgslsmith_clamp_u32(global0.c, ~var_0.c, u_input.a.x)));
}

