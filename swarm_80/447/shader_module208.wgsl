struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-446f, -1354f, -460f, -420f);

var<private> global1: vec3<u32>;

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    return Struct_1(!(!vec4<bool>(false, true, -1011f > global0[_wgslsmith_index_u32(60725u, 4u)], false)), -(2147483647i >> (global1.x % 32u)), -vec3<i32>(-(~u_input.a.x), -1i, _wgslsmith_sub_i32(min(72206i, u_input.a.x), -28645i)), u_input.a.x >> ((global1.x << (_wgslsmith_sub_u32(4576u, _wgslsmith_dot_vec2_u32(global1.zz, global1.xx)) % 32u)) % 32u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(1u, global1.x, 4294967295u, u_input.b) << (vec4<u32>(u_input.b, 123u, u_input.b, 51959u) % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(0u, global1.x, 16980u, 83235u) & vec4<u32>(u_input.b, 1u, u_input.b, 6820u)), vec4<u32>(~0u, 1u, u_input.b, 1u)), vec4<u32>(57592u, countOneBits(select(35825u, u_input.b, true)), ~(~global1.x), 0u));
    var var_2 = true;
    global1 = ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(global1.x, 1u, u_input.b)), ~(~vec3<u32>(u_input.b, global1.x, var_1)), vec3<u32>(var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(50532u, global1.x, 22853u, global1.x), vec4<u32>(var_1, global1.x, 5664u, 102324u)), _wgslsmith_mod_u32(16381u, var_1))) | _wgslsmith_sub_vec3_u32(abs(vec3<u32>(~22618u, ~global1.x, ~1u)), ~(~vec3<u32>(global1.x, 45273u, global1.x)) & (abs(vec3<u32>(4294967295u, global1.x, 39885u)) & ~vec3<u32>(global1.x, 0u, 81316u)));
    var var_3 = func_2();
    return 43603u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = func_2();
    var var_2 = 515f;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(85269u, ~global1.x), global1.x, u_input.b, ~4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, ~4294967295u, 42345u, func_3(func_2())), _wgslsmith_clamp_vec4_u32(~vec4<u32>(50440u, u_input.b, 1u, global1.x), ~vec4<u32>(global1.x, global1.x, global1.x, u_input.b), ~vec4<u32>(14339u, u_input.b, u_input.b, global1.x)) >> (firstLeadingBit(~vec4<u32>(25343u, global1.x, u_input.b, global1.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(countOneBits(abs(vec4<u32>(38465u, u_input.b, 1u, u_input.b))), max(vec4<u32>(17793u, u_input.b, 86981u, 0u), vec4<u32>(8408u, 1u, global1.x, u_input.b)))));
    global0 = array<f32, 4>();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(func_2().a, ~arg_1.d, abs(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0.c.x, arg_3.c.x), vec3<i32>(arg_0.c.x, -15875i, 52065i) | arg_0.c))), u_input.a.x);
    var var_1 = _wgslsmith_div_u32(min(u_input.b, _wgslsmith_mod_u32(7643u, 38784u)), func_3(func_1(func_1(arg_0))));
    let var_2 = arg_1.c.x;
    var var_3 = _wgslsmith_mult_vec2_u32(~global1.zy, global1.xz);
    return all(!arg_1.a.yzx);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(vec4<bool>(all(vec3<bool>(global2.x, global2.x, global2.x)), true, false || global2.x, func_4(func_1(Struct_1(vec4<bool>(true, false, global2.x, global2.x), 8955i, vec3<i32>(-2147483647i, 0i, 41776i), 2147483647i)), Struct_1(vec4<bool>(false, global2.x, false, global2.x), u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 3186i), _wgslsmith_div_vec2_f32(vec2<f32>(532f, -1947f), vec2<f32>(787f, global0[_wgslsmith_index_u32(u_input.b, 4u)])), Struct_1(vec4<bool>(global2.x, false, true, true), 24777i, vec3<i32>(u_input.a.x, 1i, -1i), u_input.a.x))), select(!select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, false, global2.x), true), vec4<bool>(true, -2147483647i == u_input.a.x, false || global2.x, false | global2.x), vec4<bool>(any(vec4<bool>(false, global2.x, false, global2.x)), global2.x, global2.x, global2.x)), all(!select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global2.x, global2.x, false, false), true)));
    let var_0 = -71914i;
    var var_1 = !func_2().a.wwy;
    var var_2 = (_wgslsmith_add_vec2_i32(u_input.a, select(vec2<i32>(var_0, 4552i) ^ vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, var_0) | u_input.a, true)) >> (vec2<u32>(countOneBits(~u_input.b), ~reverseBits(global1.x)) % vec2<u32>(32u))) & u_input.a;
    let var_3 = func_1(Struct_1(select(func_1(Struct_1(vec4<bool>(false, global2.x, var_1.x, false), -32767i, vec3<i32>(-14170i, 26746i, -29390i), 1i)).a, vec4<bool>(var_1.x, true, any(vec2<bool>(var_1.x, true)), func_2().a.x), !all(var_1.xx)), var_0, firstLeadingBit(vec3<i32>(select(u_input.a.x, 0i, var_1.x), func_2().c.x, ~(-5324i))), -(var_0 << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global1.x, 4u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-261f, -303f))), !any(var_3.a))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 4u)]))), global0[_wgslsmith_index_u32(~(~global1.x), 4u)], var_3.c.xx);
}

