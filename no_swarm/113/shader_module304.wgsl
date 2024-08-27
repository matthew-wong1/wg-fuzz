struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2>;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<bool>(false, false), 12935u, 1156f, 76397u), Struct_1(vec2<bool>(true, true), 52227u, 1768f, 39302u), Struct_1(vec2<bool>(false, true), 0u, 642f, 0u), Struct_1(vec2<bool>(false, true), 28228u, 185f, 4294967295u), Struct_1(vec2<bool>(true, true), 0u, -279f, 7579u), Struct_1(vec2<bool>(true, true), 4294967295u, 1157f, 32667u), Struct_1(vec2<bool>(false, true), 40056u, 1779f, 1u), Struct_1(vec2<bool>(true, false), 0u, 211f, 6585u), Struct_1(vec2<bool>(true, false), 74610u, 168f, 34222u), Struct_1(vec2<bool>(true, true), 4294967295u, 1445f, 0u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>) -> i32 {
    global1 = 1u;
    return arg_0;
}

fn func_2() -> Struct_1 {
    var var_0 = -(u_input.e.zz ^ (_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.d, u_input.d)), select(u_input.e.xy, vec2<i32>(0i, u_input.c), vec2<bool>(false, true))) << (~(~u_input.b.yx) % vec2<u32>(32u))));
    var var_1 = ~(~(_wgslsmith_add_u32(u_input.b.x, 14928u) << (u_input.a % 32u)) ^ ~0u);
    global2 = array<Struct_1, 10>();
    let var_2 = Struct_2(func_1(_wgslsmith_mult_i32(-1i, 2147483647i), vec3<bool>(false & all(vec4<bool>(false, false, true, false)), reverseBits(u_input.a) == 4294967295u, true), vec2<i32>(u_input.d, 44484i)));
    var_1 = ~global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, 16953u)), 2u)];
    return Struct_1(vec2<bool>(any(vec2<bool>(true, true)), true), 1u ^ _wgslsmith_div_u32(global0[_wgslsmith_index_u32(58124u, 2u)], 0u), 544f, firstTrailingBit(global0[_wgslsmith_index_u32(~u_input.b.x, 2u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83893u, 2u)], 2u)];
    var var_1 = 4658u;
    var var_2 = ~(global0[_wgslsmith_index_u32(8477u, 2u)] << (reverseBits(select(global0[_wgslsmith_index_u32(1u, 2u)], u_input.b.x, false)) % 32u)) < ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(739u, global0[_wgslsmith_index_u32(u_input.b.x, 2u)] << (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 29177u) % 32u)), 2u)];
    var_1 = 11389u;
    let var_3 = select(vec4<i32>(_wgslsmith_add_i32(0i, u_input.c & 0i), 0i, u_input.d, func_1(i32(-1i) * -2147483647i, select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), -vec2<i32>(u_input.c, -8325i))) & reverseBits(vec4<i32>(u_input.e.x, _wgslsmith_add_i32(u_input.e.x, u_input.e.x), abs(-2147483647i), u_input.e.x)), vec4<i32>(u_input.d | (i32(-1i) * -23481i), firstTrailingBit(u_input.d), func_1(u_input.e.x, vec3<bool>(true, true, true), u_input.e.xx) << (global0[_wgslsmith_index_u32(u_input.b.x, 2u)] % 32u), -23180i), !all(vec2<bool>(true, true)));
    let var_4 = 47143i;
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c);
}

