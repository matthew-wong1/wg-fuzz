struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1062f, 281f, 179f, -1184f);

var<private> global1: array<u32, 31> = array<u32, 31>(24552u, 99014u, 0u, 4294967295u, 1u, 0u, 0u, 0u, 55087u, 11590u, 369u, 0u, 12964u, 0u, 4294967295u, 17835u, 32167u, 1u, 133993u, 4294967295u, 8298u, 1u, 4294967295u, 1u, 4294967295u, 67933u, 0u, 29687u, 8504u, 1u, 27762u);

var<private> global2: array<bool, 11> = array<bool, 11>(true, true, false, false, true, false, false, true, true, false, true);

var<private> global3: array<i32, 13> = array<i32, 13>(-33996i, -4637i, 64053i, i32(-2147483648), -37727i, -47649i, 57409i, 0i, -49298i, i32(-2147483648), 30042i, 52203i, i32(-2147483648));

var<private> global4: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_5 {
    var var_0 = global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(25239u, 0u), 31u)], 31u)], 13u)];
    return Struct_5(vec2<u32>(1u, 0u | ~(~global1[_wgslsmith_index_u32(arg_1.x, 31u)])));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    global3 = array<i32, 13>();
    var var_0 = Struct_4(Struct_1(1399f, _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 31u)], 13u)], u_input.a.x), vec2<i32>(-2147483647i, -16725i))), ~(-1446i)), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(3120u, global1[_wgslsmith_index_u32(4294967295u, 31u)], u_input.d)), vec3<u32>(arg_0.a.x, u_input.d, 1u) & vec3<u32>(u_input.c, 4294967295u, u_input.d)))));
    var_0 = Struct_4(var_0.a);
    global2 = array<bool, 11>();
    let var_1 = true;
    return !select(vec4<bool>(any(!vec4<bool>(false, var_1, false, global2[_wgslsmith_index_u32(110354u, 11u)])), global4.x, all(select(vec3<bool>(var_1, true, global2[_wgslsmith_index_u32(arg_0.a.x, 11u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13398u, 31u)], 11u)], false, global2[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(global4.x, global4.x, true))), !all(vec2<bool>(global4.x, global2[_wgslsmith_index_u32(8153u, 11u)]))), !(!vec4<bool>(true, false, true, var_1)), vec4<bool>(false, any(vec4<bool>(true, var_1, var_1, var_1)), any(vec3<bool>(false, global4.x, false)), global4.x));
}

fn func_1() -> u32 {
    let var_0 = ~(select(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 78115u, 29381u, 1u), ~vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 31u)], 0u, 16453u)), ~(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 31u)], 0u, u_input.c, global1[_wgslsmith_index_u32(5522u, 31u)])), func_3(func_2(118f, vec4<u32>(4294967295u, 44705u, u_input.e, 25887u)))) & ((_wgslsmith_sub_vec4_u32(vec4<u32>(32555u, 26906u, global1[_wgslsmith_index_u32(u_input.d, 31u)], u_input.c), vec4<u32>(u_input.e, 1u, global1[_wgslsmith_index_u32(0u, 31u)], 55663u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(66105u, global1[_wgslsmith_index_u32(33835u, 31u)], 42084u, u_input.e), vec4<u32>(0u, u_input.d, 0u, global1[_wgslsmith_index_u32(u_input.d, 31u)]), vec4<u32>(0u, u_input.c, 0u, u_input.d))) >> (~(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 31u)], 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)], 4294967295u)) % vec4<u32>(32u))));
    return 0u | var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(global1[_wgslsmith_index_u32(abs(u_input.c), 31u)]), ~func_1()), 31u)];
    global1 = array<u32, 31>();
    let var_1 = true;
    global1 = array<u32, 31>();
    global2 = array<bool, 11>();
    var_0 = ~1u;
    global1 = array<u32, 31>();
    global4 = !vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 11u)], all(select(!global4.yz, !vec2<bool>(global4.x, global2[_wgslsmith_index_u32(u_input.d, 11u)]), func_3(Struct_5(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2885u, 31u)], 31u)], u_input.e))).ww)), true && all(vec2<bool>(true, true)));
    global4 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + global0.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -322f), global2[_wgslsmith_index_u32(1u << (abs(_wgslsmith_div_u32(0u, 34637u)) % 32u), 11u)], true), vec3<bool>(!(_wgslsmith_f_op_f32(exp2(global0.x)) >= -1352f), !((u_input.e << (global1[_wgslsmith_index_u32(u_input.d, 31u)] % 32u)) >= _wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(u_input.e, 31u)])), !(global2[_wgslsmith_index_u32(0u, 11u)] & false) || global4.x), reverseBits(~_wgslsmith_add_u32(u_input.c, u_input.c)) >= ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.e, 13u)] << (_wgslsmith_mult_u32(u_input.e, u_input.d) % 32u), (74817i << (1u % 32u)) & (global3[_wgslsmith_index_u32(~3770u, 13u)] & 1i)), max(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(7047i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, -1i, u_input.b, 2147483647i)), vec4<i32>(-13775i, -1i, global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(u_input.c, 13u)])), -2147483647i), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-19549i, global3[_wgslsmith_index_u32(u_input.d, 13u)]), vec2<i32>(global3[_wgslsmith_index_u32(u_input.d, 13u)], -1i)), vec2<i32>(-48141i, u_input.a.x)), u_input.a.zy)));
}

