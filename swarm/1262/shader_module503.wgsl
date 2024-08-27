struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: array<vec3<f32>, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global3 = array<vec3<f32>, 13>();
    var var_0 = false;
    var var_1 = !vec3<bool>(!all(global0[_wgslsmith_index_u32(~global1.b.a, 31u)]), false, all(!vec3<bool>(false, global1.b.b.x, global1.c)));
    global0 = array<vec3<bool>, 31>();
    var var_2 = any(select(!(!vec4<bool>(var_1.x, global1.c, true, global1.c)), !vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, 1918f > global1.b.c, any(vec4<bool>(false, var_1.x, var_1.x, global1.b.b.x)), var_1.x))) || var_1.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.c, _wgslsmith_f_op_f32(abs(-1026f))), _wgslsmith_f_op_f32(f32(-1f) * -117f)), 1146f, true)) <= _wgslsmith_f_op_f32(f32(-1f) * -628f);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = Struct_3(arg_2.zz, -reverseBits(reverseBits(vec2<i32>(1i, 1i))), Struct_2(min(_wgslsmith_sub_i32(1i, min(-2147483647i, u_input.a)), -global1.a), Struct_1(_wgslsmith_mod_u32(1u, ~arg_1.x), !(!vec2<bool>(global1.c, global1.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -329f)), true), global1.a);
    var_0 = Struct_3(arg_2.xz, firstTrailingBit(select(arg_2.zx >> (vec2<u32>(1u, 5375u) % vec2<u32>(32u)), arg_2.yy, vec2<bool>(true, true))), var_0.c, 25683i);
    var var_1 = func_3();
    var var_2 = arg_2;
    let var_3 = global1.b;
    return countOneBits(global1.b.a | ~arg_1.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = global1.b;
    let var_1 = Struct_2(u_input.a, arg_3.b, arg_3.b.b.x);
    var var_2 = Struct_3(~vec2<i32>(~(-1i), firstTrailingBit(1i)), (_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, global1.a), max(vec2<i32>(var_1.a, arg_3.a), vec2<i32>(-1i, 43578i))) | (reverseBits(vec2<i32>(0i, 2147483647i)) & countOneBits(vec2<i32>(-1i, arg_3.a)))) ^ -vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a), u_input.a), arg_3, ~(-_wgslsmith_add_i32(-4060i, _wgslsmith_mod_i32(global1.a, var_1.a))));
    var_2 = Struct_3(var_2.b & var_2.a, _wgslsmith_add_vec2_i32(var_2.a, abs(~vec2<i32>(u_input.a, -1i))), Struct_2(var_2.a.x, var_1.b, !(!(arg_3.b.b.x || arg_0.x))), 2147483647i);
    var var_3 = 8851i;
    return Struct_2(var_2.c.a, Struct_1(var_2.c.b.a ^ func_2(true & arg_0.x, vec2<u32>(arg_1.x, 27087u), vec3<i32>(-1i, global1.a, u_input.a) << (vec3<u32>(var_1.b.a, 21072u, arg_1.x) % vec3<u32>(32u))), !select(select(vec2<bool>(var_1.b.b.x, global1.b.b.x), var_2.c.b.b, vec2<bool>(var_1.b.b.x, false)), vec2<bool>(true, var_1.b.b.x), var_1.b.b.x & arg_3.b.b.x), -1238f), false);
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(select(!(!select(global1.b.b, vec2<bool>(false, global1.c), global1.b.b)), vec2<bool>(global1.c, global1.c), select(vec2<bool>(any(vec4<bool>(global1.c, false, true, false)), global1.c), vec2<bool>(global1.b.a <= 4294967295u, !global1.c), global1.b.b.x)), vec2<u32>(_wgslsmith_mult_u32(80440u, global1.b.a), func_2(all(global1.b.b), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u) & vec2<u32>(global1.b.a, 36967u), vec2<u32>(global1.b.a, global1.b.a)), vec3<i32>(-25078i, -2147483647i, 2147483647i) << (abs(vec3<u32>(global1.b.a, 14474u, global1.b.a)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-412f, 1094f, global1.b.b.x)))))), Struct_2(23221i, global1.b, true));
    global2 = -(~_wgslsmith_add_i32(select(global1.a & -2147483647i, firstTrailingBit(var_0.a), var_0.c), var_0.a));
    global0 = array<vec3<bool>, 31>();
    var var_1 = Struct_2(0i, global1.b, all(select(select(vec3<bool>(var_0.c, global1.c, global1.c), global0[_wgslsmith_index_u32(var_0.b.a, 31u)], true), global0[_wgslsmith_index_u32(var_0.b.a, 31u)], global0[_wgslsmith_index_u32(global1.b.a << (global1.b.a % 32u), 31u)])) | false);
    var var_2 = 542f;
    return Struct_3(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, -71570i), vec2<i32>(global1.a & -1i, max(1i, u_input.a))), vec2<i32>(32236i, 0i) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 50798i, -1i), vec3<i32>(var_0.a, global1.a, -1i)), -14580i)), max(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, 1i), vec2<i32>(1i, var_0.a)) | abs(vec2<i32>(15872i, -2147483647i)), ~vec2<i32>(u_input.a, -48199i) >> (~vec2<u32>(0u, 5561u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -3804i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, var_0.a), vec2<i32>(-9366i, -1i))) >> (vec2<u32>(~var_1.b.a, 45569u) % vec2<u32>(32u))), var_0, u_input.a);
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = ~_wgslsmith_clamp_vec3_i32(~(-(~vec3<i32>(73330i, -2147483647i, arg_0.b.x))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(global1.a, -4251i, -42055i)), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(global1.a, arg_0.d, global1.a)), vec3<i32>(2147483647i, 2147483647i, global1.a) ^ vec3<i32>(23077i, u_input.a, 16244i))), select(-select(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(global1.a, arg_0.a.x, global1.a), vec3<bool>(true, arg_0.c.b.b.x, global1.c)), firstTrailingBit(abs(vec3<i32>(global1.a, -1i, global1.a))), !(!vec3<bool>(false, arg_0.c.c, arg_0.c.c))));
    let var_1 = select(var_0.x, -(~(-2147483647i)), !func_1().c.b.b.x);
    global3 = array<vec3<f32>, 13>();
    var var_2 = vec2<i32>(abs(_wgslsmith_sub_i32(-(~var_0.x), var_1)), abs(min(u_input.a, ~(-var_0.x))));
    let var_3 = func_1().c;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    global0 = array<vec3<bool>, 31>();
    let var_0 = vec3<u32>(global1.b.a, 1u, _wgslsmith_add_u32(firstTrailingBit(global1.b.a), _wgslsmith_add_u32(~global1.b.a, ~1u) ^ 86857u));
    global0 = array<vec3<bool>, 31>();
    global1 = func_5(func_1());
    global3 = array<vec3<f32>, 13>();
    var var_1 = !select(vec3<bool>(all(!vec4<bool>(false, global1.c, true, true)), true, global1.b.b.x), global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(var_0.x << (global1.b.a % 32u), 31u)]);
    let var_2 = Struct_3(_wgslsmith_clamp_vec2_i32(min(~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-24959i, 2147483647i), var_1.x), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-11390i, 1i), vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-45464i, -32985i), vec2<i32>(-3136i, 2147483647i), vec2<i32>(-62895i, global1.a)))), firstTrailingBit(-select(vec2<i32>(global1.a, global1.a), vec2<i32>(u_input.a, u_input.a), global1.c)), reverseBits(vec2<i32>(i32(-1i) * -2147483647i, -u_input.a))), vec2<i32>(1i, -(u_input.a >> (~global1.b.a % 32u))), func_5(func_1()), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-19586i, ~u_input.a), vec2<i32>(max(-1i, -2147483647i), func_1().d))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.c.b.c, _wgslsmith_f_op_f32(sign(var_2.c.b.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global1.b.c, 999f)))), _wgslsmith_f_op_f32(-var_2.c.b.c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.c, var_2.c.b.c, var_2.c.b.c, 270f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.b.c, var_2.c.b.c, var_2.c.b.c, 753f)))))))), var_0 ^ _wgslsmith_mod_vec3_u32(var_0, ~firstLeadingBit(var_0)), ~9311u);
}

