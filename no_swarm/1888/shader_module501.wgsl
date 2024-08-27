struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 0u, 53247u, 7152u);

var<private> global1: array<f32, 26> = array<f32, 26>(124f, 191f, -312f, 1988f, -1602f, 939f, 1386f, 2414f, 322f, -313f, -257f, 163f, -2154f, 233f, 1067f, -1565f, 1000f, -204f, 391f, -2835f, 244f, 451f, -2004f, 1000f, 4138f, -290f);

var<private> global2: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(116604u, 1u), vec2<u32>(13645u, 7494u), vec2<u32>(1u, 88584u), vec2<u32>(2623u, 1u), vec2<u32>(8580u, 4294967295u), vec2<u32>(30839u, 36683u), vec2<u32>(0u, 35543u), vec2<u32>(77137u, 54589u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 66920u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = abs(-arg_0.a.a);
    let var_1 = vec4<i32>(1i, u_input.b.x & _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, arg_0.a.a), _wgslsmith_mult_i32(arg_0.c.a, arg_0.a.a)), abs(12381i), -1i) << (firstLeadingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.b, 9849u, 39793u, 29575u), ~vec4<u32>(22212u, 59266u, 1u, u_input.a)), vec4<u32>(reverseBits(arg_0.a.b), 48567u, 5098u, ~4294967295u), true)) % vec4<u32>(32u));
    var var_2 = Struct_5(_wgslsmith_clamp_u32(arg_0.c.b ^ 0u, global0.x, ~(~_wgslsmith_mult_u32(arg_0.c.b, global0.x))));
    global2 = array<vec2<u32>, 12>();
    var_2 = Struct_5(arg_0.c.b);
    return global0.x;
}

fn func_2() -> u32 {
    global2 = array<vec2<u32>, 12>();
    let var_0 = func_3(Struct_2(Struct_1(max(u_input.b.x, -1i) << (_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u), reverseBits(reverseBits(global0.x)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 26u)], global1[_wgslsmith_index_u32(6323u, 26u)], -935f, 242f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(26162u, 26u)], 318f))))), Struct_1(min(abs(-1i), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(44521u, 0u, u_input.a, u_input.a), vec4<u32>(15619u, global0.x, 41983u, global0.x)) | max(u_input.a, u_input.a), vec4<bool>(true, true, true, true))));
    var var_1 = abs(_wgslsmith_mult_vec4_i32(reverseBits(min(vec4<i32>(u_input.b.x, -10069i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 1i))), ~vec4<i32>(-32610i, u_input.b.x, u_input.b.x, u_input.b.x) ^ abs(vec4<i32>(u_input.b.x, u_input.b.x, -14199i, 1i)))) >> (firstTrailingBit(vec4<u32>(~(~global0.x), u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u));
    global2 = array<vec2<u32>, 12>();
    var var_2 = !select(vec2<bool>(all(vec2<bool>(false, false)), false), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), false), all(vec2<bool>(true, true))));
    return var_0;
}

fn func_1() -> vec4<u32> {
    let var_0 = vec2<bool>(func_2() < 4294967295u, true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-692f, global1[_wgslsmith_index_u32(1u, 26u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], 993f)) * vec2<f32>(940f, -911f))))));
    var var_2 = func_2();
    let var_3 = reverseBits(select(~global0.yzw, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~global0.zwz, vec3<u32>(1u, global0.x, u_input.a)), vec3<u32>(u_input.a, ~27079u, global0.x)), !select(vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false), true)));
    let var_4 = !select(!vec4<bool>(false, true, true, var_0.x || var_0.x), !(!select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, false, false), var_0.x)), var_0.x);
    return _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(min(vec4<u32>(global0.x, global0.x, global0.x, 45585u), vec4<u32>(4294967295u, global0.x, u_input.a, 80293u)), vec4<u32>(0u, u_input.a, global0.x, global0.x))), ~firstTrailingBit(~vec4<u32>(var_3.x, 0u, var_3.x, 1u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, var_3.x) << (vec4<u32>(var_3.x, u_input.a, 2629u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(0u, var_3.x, var_3.x, 13271u)), abs(vec4<u32>(64038u, u_input.a, 49329u, u_input.a)), u_input.a != var_3.x)), vec4<u32>(46882u, max(59665u, 0u | var_3.x), u_input.a, global0.x) | ~countOneBits(vec4<u32>(var_3.x, global0.x, var_3.x, global0.x) & vec4<u32>(12619u, 26346u, 0u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.x;
    global0 = min(((firstLeadingBit(vec4<u32>(1u, global0.x, 1u, u_input.a)) << (~vec4<u32>(global0.x, u_input.a, 52093u, u_input.a) % vec4<u32>(32u))) ^ func_1()) >> (select(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0.x, u_input.a, global0.x, 4294967295u), vec4<u32>(20437u, 0u, global0.x, global0.x)), ~(vec4<u32>(0u, 22951u, u_input.a, global0.x) << (vec4<u32>(72877u, global0.x, 60082u, u_input.a) % vec4<u32>(32u))), true) % vec4<u32>(32u)), vec4<u32>(~(u_input.a ^ 4294967295u), 351u, u_input.a, u_input.a));
    global1 = array<f32, 26>();
    var var_1 = Struct_4(any(vec3<bool>(true, true, true)), Struct_1(-31755i, firstLeadingBit(57520u), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)))));
    let var_2 = Struct_4(all(select(select(var_1.b.c.yz, select(var_1.b.c.wx, vec2<bool>(var_1.a, false), var_1.a), vec2<bool>(false, true)), vec2<bool>(!var_1.b.c.x, var_1.b.a >= 1i), any(select(var_1.b.c.xzz, var_1.b.c.wzx, var_1.b.c.yxx)))), Struct_1(~abs(-27047i), _wgslsmith_div_u32(~u_input.a, ~global0.x), var_1.b.c));
    var var_3 = 2147483647i;
    let var_4 = vec2<bool>(any(!vec4<bool>(var_2.b.c.x, var_1.b.c.x && false, var_2.b.c.x, true)), var_2.b.c.x);
    var_1 = Struct_4(true, var_1.b);
    let var_5 = 161i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.b.a, -31615i), u_input.b.yy)), vec2<i32>(-1i) * -vec2<i32>(-1i, 2147483647i)));
}

