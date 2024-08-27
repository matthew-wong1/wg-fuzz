struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool = true;

var<private> global2: array<f32, 2> = array<f32, 2>(-546f, -386f);

var<private> global3: array<i32, 31>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global0 = !all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)));
    global1 = !(-(~u_input.a) <= max(5466i, -2791i)) | true;
    let var_0 = Struct_3(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, 5147u, 13879u, 32274u), vec4<u32>(70851u, 1u, 4294967295u, 4294967295u)), vec4<u32>(1u, 4294967295u, 27328u, 28809u), vec4<u32>(1u, 1u, 1u, 1u)), select(~max(vec4<u32>(1u, 1u, 4294967295u, 52327u), vec4<u32>(71727u, 4294967295u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), true)), Struct_1(13359i ^ u_input.a));
    let var_1 = Struct_3(0u, var_0.b);
    let var_2 = var_1.b;
    return var_2.a;
}

fn func_2() -> Struct_2 {
    global1 = true;
    var var_0 = Struct_1(-select(0i, ~u_input.a, true));
    let var_1 = ~(-_wgslsmith_sub_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 7268i, var_0.a), vec3<i32>(-1i, -25562i, var_0.a)), select(vec3<i32>(1i, 24150i, global3[_wgslsmith_index_u32(48458u, 31u)]), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], -2147483647i, 34744i), true)), abs(vec3<i32>(var_0.a, u_input.a, global3[_wgslsmith_index_u32(0u, 31u)])) & -vec3<i32>(u_input.a, 0i, -6341i)));
    let var_2 = !all(vec4<bool>(true, true, true, true));
    var_0 = Struct_1(-1035i);
    return Struct_2(-vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(0u, 4294967295u)), 31u)], -func_3(), 2147483647i), !vec2<bool>(select(66832u, 0u, var_2) != _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23075u, 29671u), vec3<u32>(0u, 1u, 108718u)), all(select(vec4<bool>(var_2, false, true, false), vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(true, false, var_2, var_2)))), Struct_1(_wgslsmith_div_i32(var_0.a, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(firstTrailingBit(0u), 31u)], abs(-1i)))), vec2<bool>(!(!any(vec2<bool>(true, true))), ~var_1.x <= -31700i));
}

fn func_1() -> u32 {
    global3 = array<i32, 31>();
    let var_0 = func_2();
    var var_1 = countOneBits(1u);
    var var_2 = _wgslsmith_clamp_u32(~27112u, ~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(71408u, 38655u, 1u, 71530u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(17830u, 4552u, 97806u, 30750u)), abs(vec4<u32>(103190u, 62066u, 17217u, 0u)), vec4<u32>(24604u, 1u, 64923u, 42227u))) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 10356u, 0u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    global0 = !(true && (!any(vec4<bool>(var_0.b.x, var_0.b.x, true, var_0.b.x)) & var_0.b.x));
    return ~22018u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 31>();
    var var_0 = false;
    var var_1 = true;
    var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(165f - _wgslsmith_f_op_f32(min(-324f, global2[_wgslsmith_index_u32(func_1(), 2u)])));
    var var_3 = Struct_2(vec3<i32>(u_input.a ^ -1i, 40662i, -3645i), vec2<bool>(func_2().d.x, all(vec3<bool>(true, true, true))), Struct_1(~_wgslsmith_clamp_i32(13752i, u_input.a << (86573u % 32u), ~48131i)), vec2<bool>(-1348f <= _wgslsmith_f_op_f32(-503f - _wgslsmith_f_op_f32(735f - var_2)), true));
    global0 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(-(vec4<i32>(firstTrailingBit(2147483647i), _wgslsmith_sub_i32(-33318i, var_3.c.a), ~15359i, min(18333i, 0i)) << (_wgslsmith_clamp_vec4_u32(select(vec4<u32>(77448u, 29105u, 20117u, 0u), vec4<u32>(7588u, 1u, 0u, 4294967295u), var_3.d.x), vec4<u32>(1u, 60222u, 1u, 1498u), ~vec4<u32>(2878u, 10755u, 0u, 0u)) % vec4<u32>(32u))), firstLeadingBit(~_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 39984u, 30892u), select(vec3<u32>(1u, 14556u, 4294967295u), vec3<u32>(12303u, 10469u, 55158u), var_3.b.x))));
}

