struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec4<u32> = vec4<u32>(0u, 58766u, 0u, 11250u);

var<private> global3: array<i32, 19>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global3 = array<i32, 19>();
    var var_0 = vec4<bool>(all(vec4<bool>(global1.x, all(!vec3<bool>(true, false, global0.a)), !(arg_0.d | global0.d), any(vec2<bool>(global0.b.x, arg_0.a)))), !global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -697f)) - _wgslsmith_f_op_f32(f32(-1f) * -719f)), _wgslsmith_f_op_f32(f32(-1f) * -268f))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -568f))), true);
    let var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(820f - 1301f));
    let var_2 = ~global2.wx;
    var var_3 = Struct_1(true, vec2<bool>(any(select(!var_0.zz, !arg_0.b, global0.b)), true), global2.x, arg_0.d);
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 699f) * vec3<f32>(-235f, var_1.x, 1912f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1093f, -1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -2641f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(116f, 879f, -1883f), vec3<f32>(1107f, var_1.x, -446f)))))))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = firstLeadingBit(~u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global1.x, global0.b, 1u, global0.a))), vec3<f32>(-168f, -309f, 2559f))))) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(true, !global0.b, select(global2.x, global0.c, global1.x), !global0.d)))) + vec3<f32>(-639f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(693f, _wgslsmith_f_op_f32(abs(1336f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1253f)) - _wgslsmith_f_op_f32(abs(-888f))) * _wgslsmith_f_op_f32(step(-2429f, _wgslsmith_f_op_f32(f32(-1f) * -833f))))));
    var var_2 = Struct_1(global1.x, select(vec2<bool>(!(global0.a | false), all(!vec3<bool>(global1.x, arg_1, false))), global0.b, true), global2.x, all(!vec3<bool>(any(global0.b), arg_1, global1.x)));
    global1 = !select(global0.b, select(!vec2<bool>(var_2.a, false), !vec2<bool>(global1.x, arg_1), vec2<bool>(global1.x, true)), var_2.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 823f, var_1.x, var_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1913f, var_1.x, 324f, var_1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, -216f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1872f, -1397f, 1628f) * vec4<f32>(var_1.x, var_1.x, 687f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 281f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-739f)))), -281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-827f))) - _wgslsmith_f_op_f32(-var_1.x)), 325f));
    return Struct_1(all(!vec2<bool>(all(global0.b), false)), !var_2.b, ~(~(~(1u & global0.c))), global1.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = arg_0;
    global2 = ~(~vec4<u32>(max(min(arg_1.x, global0.c), 4707u & u_input.b), 57836u, global0.c & max(36994u, 1u), 1u));
    let var_1 = Struct_1(func_2(global0.c, global0.a, ~(-vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 19u)], global3[_wgslsmith_index_u32(arg_1.x, 19u)], -7207i))).d & (all(select(arg_0.b, vec2<bool>(false, var_0.b.x), var_0.b.x)) || func_2(1u, true, -vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global3[_wgslsmith_index_u32(13132u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)])).a), var_0.b, ~0u, global0.d);
    global2 = (_wgslsmith_mult_vec4_u32(vec4<u32>(select(global2.x, 1u, true), firstTrailingBit(22834u), ~arg_1.x, _wgslsmith_add_u32(global2.x, arg_0.c)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.yx), 0u, _wgslsmith_dot_vec3_u32(global2.yxw, global2.xzw), 0u | global2.x)) & _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(65951u, 4294967295u, 2547u, var_0.c), vec4<u32>(4294967295u, 38909u, 4294967295u, 31804u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 103798u, global2.x, 8732u), vec4<u32>(arg_1.x, 88197u, arg_1.x, 16907u), vec4<u32>(1u, global2.x, 30309u, global2.x))), ~(~vec4<u32>(arg_1.x, var_1.c, var_1.c, 50213u)), select(~vec4<u32>(var_0.c, var_1.c, var_0.c, global0.c), reverseBits(vec4<u32>(1u, global2.x, var_1.c, 14329u)), false & var_0.a))) ^ vec4<u32>(select(firstLeadingBit(~var_1.c), 20962u << (_wgslsmith_mod_u32(var_1.c, global2.x) % 32u), all(vec2<bool>(false, arg_0.d))), ~(~arg_1.x | abs(global2.x)), firstTrailingBit(1u), 8918u);
    let var_2 = ~countOneBits(select(abs(vec2<i32>(global3[_wgslsmith_index_u32(arg_0.c, 19u)], -20823i)), vec2<i32>(33001i, global3[_wgslsmith_index_u32(global0.c, 19u)]), false) & abs(_wgslsmith_div_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(0u, 19u)], 1i), vec2<i32>(-1i, global3[_wgslsmith_index_u32(arg_1.x, 19u)]))));
    return func_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, ~abs(4294967295u)), 15u), false, vec3<i32>(58074i, min(~global3[_wgslsmith_index_u32(var_1.c | var_1.c, 19u)], (global3[_wgslsmith_index_u32(global0.c, 19u)] | -28181i) & 0i), min(var_2.x >> (1u % 32u), 0i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<i32> {
    let var_0 = max(arg_1.zz, ~min(vec2<i32>(1i, _wgslsmith_mult_i32(-41897i, -9576i)), max(vec2<i32>(56436i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, arg_1.x), arg_1.yy))));
    global0 = arg_0;
    global1 = arg_0.b;
    return ~arg_1.zwx;
}

fn func_1() -> vec4<u32> {
    var var_0 = -func_5(func_4(func_2(~global0.c, true, -vec3<i32>(global3[_wgslsmith_index_u32(global0.c, 19u)], global3[_wgslsmith_index_u32(global0.c, 19u)], global3[_wgslsmith_index_u32(82854u, 19u)])), ~u_input.a.zz ^ u_input.a.yx), abs(abs(-vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], -1i, global3[_wgslsmith_index_u32(26531u, 19u)]))));
    global2 = countOneBits(~((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 7641u), vec4<u32>(0u, u_input.b, 29485u, global0.c)) >> (vec4<u32>(global0.c, global0.c, u_input.b, global2.x) % vec4<u32>(32u))) | ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, global0.c, u_input.b), vec4<u32>(8910u, global2.x, u_input.b, 23811u))));
    return firstLeadingBit(~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(60379u, 1u, global0.c, 49922u), vec4<u32>(1u, global2.x, 59819u, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 0u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 20186u, global0.c), vec4<u32>(global2.x, u_input.b, global0.c, u_input.b)) >> ((vec4<u32>(8925u, u_input.b, global2.x, 21605u) ^ vec4<u32>(global0.c, 12800u, 13378u, global0.c)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(func_1() | ~(~vec4<u32>(1u, u_input.a.x, u_input.b, 40627u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 47865u), vec4<u32>(4294967295u, global0.c, 10472u, 4294967295u))) | _wgslsmith_add_vec4_u32(min(vec4<u32>(28925u, 4294967295u, 4294967295u, global0.c), select(vec4<u32>(u_input.a.x, 1u, global0.c, global2.x), vec4<u32>(u_input.a.x, 52257u, global2.x, 14489u), global1.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.c), global2.xx), ~0u, 7945u, u_input.b & u_input.a.x)), (select(true, 50475u > global2.x, true) | any(global0.b)) && true);
    let var_0 = func_2(7652u, all(!vec4<bool>(global0.d, !global1.x, global3[_wgslsmith_index_u32(u_input.b, 19u)] <= global3[_wgslsmith_index_u32(global2.x, 19u)], false)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(64692i, -21943i, global3[_wgslsmith_index_u32(global0.c, 19u)]) ^ vec3<i32>(26163i, global3[_wgslsmith_index_u32(u_input.b, 19u)], global3[_wgslsmith_index_u32(global0.c, 19u)])), func_5(Struct_1(func_4(Struct_1(global1.x, global0.b, 4294967295u, global1.x), u_input.a.yz).d, vec2<bool>(global0.a, global0.a), global0.c | 52929u, true), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, 0i, global3[_wgslsmith_index_u32(38862u, 19u)], global3[_wgslsmith_index_u32(global2.x, 19u)]), vec4<i32>(global3[_wgslsmith_index_u32(23726u, 19u)], -2147483647i, -8436i, -54188i) >> (vec4<u32>(0u, global2.x, 1u, 0u) % vec4<u32>(32u))))));
    var var_1 = vec3<u32>(~global2.x, 71392u, global2.x);
    global1 = global0.b;
    var var_2 = abs(1i);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 39164u, var_0.c), countOneBits(vec4<u32>(var_1.x, var_3.c, 19104u, 43450u))), 19u)], -countOneBits(func_5(var_0, vec4<i32>(global3[_wgslsmith_index_u32(94149u, 19u)], 12050i, global3[_wgslsmith_index_u32(48202u, 19u)], -2645i)).x)), func_1().x, ~vec3<u32>(1u, firstTrailingBit(func_2(u_input.a.x, true, vec3<i32>(-9442i, global3[_wgslsmith_index_u32(var_0.c, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)])).c), 27808u ^ countOneBits(var_3.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(771f)), _wgslsmith_f_op_f32(step(-141f, -1244f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2279f * _wgslsmith_f_op_f32(ceil(149f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-750f, 311f)) + -1228f) - 1052f)));
}

