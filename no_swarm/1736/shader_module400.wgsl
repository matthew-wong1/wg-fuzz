struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 6> = array<i32, 6>(i32(-2147483648), -11357i, -59110i, -14625i, i32(-2147483648), 17177i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = 0u;
    var var_1 = vec4<bool>(true, select(!arg_1.a.x, true, true | global0.a.x), select(true, any(select(vec3<bool>(global0.a.x, global0.a.x, arg_1.a.x), select(vec3<bool>(global0.a.x, false, arg_1.a.x), vec3<bool>(arg_1.a.x, true, false), arg_1.a.x), vec3<bool>(arg_1.a.x, false, global0.a.x))), !(!(!arg_1.a.x))), _wgslsmith_f_op_f32(ceil(1f)) < -1000f);
    var var_2 = vec3<u32>(arg_0.x, var_0, ~5418u);
    let var_3 = Struct_1(var_1.xx, reverseBits(~select(-vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(var_2.x, 6u)]), vec3<i32>(u_input.a.x, 1i, arg_1.b.x) >> (vec3<u32>(1u, arg_0.x, var_0) % vec3<u32>(32u)), arg_1.a.x)));
    let var_4 = var_3;
    return global0.a.x;
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global1 = array<i32, 6>();
    let var_0 = Struct_1(!vec2<bool>(arg_0.x, func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 6699u, 4294967295u), vec4<u32>(8574u, 85500u, 4294967295u, 1u), vec4<u32>(55980u, 90614u, 22900u, 42934u)), Struct_1(vec2<bool>(false, true), vec3<i32>(global1[_wgslsmith_index_u32(3505u, 6u)], u_input.a.x, global0.b.x)))), (_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], 0i), vec3<i32>(global0.b.x, -1i, u_input.a.x)) ^ vec3<i32>(15977i, ~global0.b.x, -2147483647i)) ^ vec3<i32>(global0.b.x, _wgslsmith_mult_i32(global0.b.x, global1[_wgslsmith_index_u32(1u, 6u)]) << (4294967295u % 32u), global0.b.x));
    let var_1 = vec2<u32>(1u, ~36644u);
    var var_2 = func_3(vec4<u32>(var_1.x, var_1.x, 1u, _wgslsmith_mod_u32(~1u, var_1.x)), var_0) || (true || arg_0.x);
    let var_3 = Struct_1(vec2<bool>(true, true), ~(~(-countOneBits(var_0.b))));
    return reverseBits(select(reverseBits(u_input.a.x & _wgslsmith_mod_i32(var_3.b.x, -2147483647i)), ~((84843i << (var_1.x % 32u)) & global0.b.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, var_1.x) ^ var_1) != ((var_1.x << (var_1.x % 32u)) >> (var_1.x % 32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(!arg_3.a, select(arg_3.a, vec2<bool>(!arg_3.a.x && !arg_3.a.x, max(-21176i, global0.b.x) < _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 2147483647i)), vec2<bool>(any(vec2<bool>(false, false)), true)), any(vec3<bool>(true, true, arg_3.a.x)));
    let var_1 = arg_2;
    global0 = arg_3;
    var var_2 = Struct_1(global0.a, ~arg_0);
    var var_3 = _wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(0u, arg_2)) ^ ~vec2<u32>(32540u, var_1), reverseBits(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(5198u, arg_2)), vec2<u32>(0u, var_1) & vec2<u32>(4294967295u, 1u)))) & (~(~(~vec2<u32>(0u, var_1))) | ~(~(~vec2<u32>(48724u, 45613u))));
    return arg_3;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    let var_0 = 1u;
    var var_1 = true;
    let var_2 = var_0;
    return func_4(vec3<i32>(-6727i, -_wgslsmith_mod_i32(-22340i << (1u % 32u), func_2(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), -_wgslsmith_add_i32(~6234i, u_input.a.x)), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(var_2, 6u)]), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(reverseBits(var_2), 6u)])), func_2(select(!vec4<bool>(true, true, global0.a.x, false), vec4<bool>(true, true, global0.a.x, global0.a.x), !global0.a.x)), 1i), var_2, Struct_1(vec2<bool>(true, global0.a.x), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_2, 6u)], global1[_wgslsmith_index_u32(87318u, 6u)], 1i), global0.b), 0i), (-2147483647i ^ u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(84588u, 4958u, 1u), vec3<u32>(53765u, 4294967295u, 1u)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(arg_0.x, u_input.a.x)) << ((var_0 & 67080u) % 32u))));
}

fn func_5(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = arg_0;
    return _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, abs(~4294967295u)), vec2<u32>(_wgslsmith_div_u32(68415u, _wgslsmith_div_u32(4294967295u, 4294967295u)), ~_wgslsmith_clamp_u32(0u, 4294967295u, 1u))), select(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(29042u, 1u, 35347u, 4294967295u), vec4<u32>(41934u, 1u, 5901u, 44299u))), ~vec2<u32>(60403u, 0u)), vec2<u32>(1u, 1u), all(!(!vec3<bool>(var_0.a.x, true, true)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 833f) - arg_0.zx);
    var var_1 = -(~func_1(vec2<i32>(0i, global1[_wgslsmith_index_u32(1u, 6u)])).b.x);
    global1 = array<i32, 6>();
    var var_2 = ((i32(-1i) * -16785i) << (((_wgslsmith_mult_u32(1u, 1u) ^ _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(arg_1.x, arg_1.x))) ^ arg_1.x) % 32u)) >> (arg_1.x % 32u);
    let var_3 = 47547i;
    return StorageBuffer(arg_0.zwz, 4294967295u & arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(all(global0.a), !global0.a.x), ~_wgslsmith_mod_vec3_i32(~(vec3<i32>(global1[_wgslsmith_index_u32(23280u, 6u)], 1i, -10384i) << (vec3<u32>(2535u, 1u, 10941u) % vec3<u32>(32u))), -(~global0.b)));
    global1 = array<i32, 6>();
    global0 = var_0;
    var var_1 = vec3<u32>(25907u, ~_wgslsmith_add_u32(1u, 7585u), ~(~(~_wgslsmith_div_u32(27921u, 91096u))));
    var var_2 = Struct_1(select(!select(vec2<bool>(false, var_0.a.x), global0.a, true), vec2<bool>(global0.a.x, var_0.a.x & false), !var_0.a), ~min(vec3<i32>(u_input.a.x, -2147483647i, ~var_0.b.x), global0.b));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1994f, -2102f, _wgslsmith_f_op_f32(f32(-1f) * -468f), 1000f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(783f, -138f, 1742f, -1613f) + vec4<f32>(-986f, -608f, 1423f, 553f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1689f, -1000f, 902f, -365f) - vec4<f32>(-726f, 368f, 1695f, 1709f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1061f, -1130f, -518f, -892f) * vec4<f32>(-908f, -1281f, -2161f, -2180f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(526f, -310f, -2564f, 562f) + vec4<f32>(-441f, -670f, 507f, 152f)), var_0.a.x)))))), _wgslsmith_sub_vec2_u32(func_5(func_1(reverseBits(var_2.b.yy))), _wgslsmith_mod_vec2_u32(var_1.yz, var_1.xy)));
}

