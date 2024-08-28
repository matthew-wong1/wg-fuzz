struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

var<private> global2: array<u32, 28>;

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(29195u, 4294967295u, 71481u, 1u), Struct_3(1u, 4485u, 17245u, 4294967295u), Struct_3(0u, 38584u, 12629u, 0u), Struct_3(4294967295u, 8420u, 93347u, 15827u), Struct_3(1u, 1u, 32457u, 0u), Struct_3(1u, 59550u, 43404u, 24084u), Struct_3(0u, 31357u, 0u, 6576u), Struct_3(0u, 4294967295u, 0u, 0u), Struct_3(5751u, 15366u, 27654u, 82890u), Struct_3(35538u, 46406u, 4294967295u, 1u), Struct_3(19158u, 25241u, 0u, 4294967295u), Struct_3(54971u, 0u, 4294967295u, 3391u), Struct_3(30453u, 32449u, 104279u, 1u), Struct_3(27081u, 4294967295u, 1u, 16678u), Struct_3(4294967295u, 12570u, 29554u, 21341u), Struct_3(1u, 15951u, 4294967295u, 82924u), Struct_3(1u, 4294967295u, 0u, 0u), Struct_3(4294967295u, 4294967295u, 1u, 0u), Struct_3(0u, 4294967295u, 65464u, 11594u), Struct_3(1u, 48561u, 1u, 24892u), Struct_3(79625u, 0u, 32054u, 50126u), Struct_3(1u, 13977u, 14824u, 39999u), Struct_3(46170u, 1u, 52674u, 4294967295u), Struct_3(4294967295u, 70136u, 19800u, 6452u), Struct_3(25740u, 0u, 58874u, 4294967295u), Struct_3(100811u, 15892u, 4294967295u, 4294967295u), Struct_3(0u, 4294967295u, 1521u, 45767u), Struct_3(1u, 1u, 53681u, 0u), Struct_3(67790u, 94528u, 45011u, 74978u), Struct_3(41370u, 15653u, 1u, 55343u), Struct_3(1u, 4294967295u, 0u, 4294967295u), Struct_3(0u, 7442u, 4294967295u, 173u));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> vec2<u32> {
    return u_input.b;
}

fn func_3() -> bool {
    global2 = array<u32, 28>();
    global1 = true;
    global1 = true;
    let var_0 = true;
    global0 = abs(vec2<i32>(-1i) * -(vec2<i32>(-7169i, u_input.a) & ~vec2<i32>(39611i, 41605i)));
    return select(var_0, all(vec3<bool>(true & var_0, var_0, !var_0)), true);
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_3(~_wgslsmith_div_u32(u_input.c.x, ~max(27518u, global2[_wgslsmith_index_u32(arg_0.x, 28u)])), 36765u, abs(func_1().x), _wgslsmith_dot_vec4_u32(min(~(~vec4<u32>(31403u, global2[_wgslsmith_index_u32(52214u, 28u)], 4294967295u, 4294967295u)), firstLeadingBit(vec4<u32>(1u, 33948u, 4294967295u, 51982u))), ~(~(~vec4<u32>(arg_0.x, global2[_wgslsmith_index_u32(1u, 28u)], u_input.b.x, u_input.c.x)))));
    let var_1 = vec3<bool>(false, true, func_3() | true);
    var var_2 = Struct_4(Struct_3(var_0.a, arg_0.x | reverseBits(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62188u, 28u)], 28u)])), 1775u, var_0.c), var_1.x, !all(var_1.zy), firstTrailingBit(~vec3<i32>(_wgslsmith_sub_i32(57470i, u_input.a), ~global0.x, _wgslsmith_div_i32(-42654i, u_input.a))), !(!vec2<bool>(var_1.x, true)));
    let var_3 = Struct_4(Struct_3(~72703u, arg_0.x, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 10574u), _wgslsmith_mult_u32(0u, 7811u)), 322u), var_2.e.x, !select(var_2.b, all(vec4<bool>(true, false, false, var_1.x)), !var_1.x) | var_2.c, var_2.d, select(select(var_2.e, select(vec2<bool>(var_2.b, var_1.x), select(vec2<bool>(var_1.x, var_2.e.x), vec2<bool>(false, var_1.x), false), !var_2.e), !(!vec2<bool>(var_2.e.x, false))), vec2<bool>(var_1.x, var_2.e.x || true), select(var_2.e, var_2.e, var_2.c)));
    global2 = array<u32, 28>();
    return Struct_4(Struct_3(4294967295u, arg_0.x, 105900u, _wgslsmith_clamp_u32(0u, 4323u, abs(1u) >> (~global2[_wgslsmith_index_u32(93168u, 28u)] % 32u))), all(vec2<bool>((6019i >= var_2.d.x) & true, !select(false, var_2.b, var_3.c))), 0u < var_2.a.c, var_3.d, select(var_2.e, select(var_1.xz, !select(var_2.e, vec2<bool>(var_3.e.x, var_2.e.x), var_2.b), var_2.d.x <= ~var_3.d.x), select(select(vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, true), vec2<bool>(false, true), vec2<bool>(var_3.b, false)), 1u > u_input.b.x), vec2<bool>(var_2.c, var_2.b), true)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: i32) -> Struct_3 {
    global1 = arg_0.c;
    let var_0 = arg_2;
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(7412i, u_input.a, 55982i, 1i), select(vec4<i32>(-29904i, -18116i, global0.x, var_0), vec4<i32>(-7669i, 37952i, 0i, 9637i), vec4<bool>(true, arg_0.b, arg_0.e.x, false))), vec4<i32>(_wgslsmith_add_i32(52592i, 45906i), abs(~global0.x), -arg_2, ~_wgslsmith_mod_i32(7992i, var_0))), vec4<i32>(1i, abs(-arg_2 >> (reverseBits(u_input.c.x) % 32u)), ~(i32(-1i) * -2147483647i), global0.x));
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.d.yx, _wgslsmith_add_vec2_i32(var_1.yy, -var_1.zy)), 1i), abs(arg_0.d.xx));
    global1 = false;
    return func_2(func_1()).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_2(~func_1()), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i | global0.x, global0.x, func_2(vec2<u32>(global2[_wgslsmith_index_u32(1u, 28u)], u_input.b.x)).d.x, u_input.a), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-7963i, 2147483647i, u_input.a, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -35144i, u_input.a, global0.x), vec4<i32>(-2147483647i, u_input.a, -25901i, u_input.a), vec4<i32>(global0.x, -8171i, u_input.a, -49129i)))), select(reverseBits(u_input.a), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, global0.x, 2147483647i), vec4<i32>(0i, global0.x, global0.x, global0.x))), true));
    var var_1 = u_input.c.xz;
    let var_2 = false;
    global2 = array<u32, 28>();
    var var_3 = global0.x;
    var var_4 = Struct_1(select(vec3<bool>(!var_2, all(vec3<bool>(var_2, var_2, true)), !(!var_2)), vec3<bool>(var_2, true, !all(vec4<bool>(var_2, true, true, true))), select(vec3<bool>(!var_2, false, var_2), vec3<bool>(all(vec2<bool>(false, var_2)), false, var_2), vec3<bool>(false, !var_2, true | var_2))), -240f);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(abs(global0.x), -_wgslsmith_mod_i32(global0.x, -4057i), global0.x, firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, global0.x, u_input.a))));
}

