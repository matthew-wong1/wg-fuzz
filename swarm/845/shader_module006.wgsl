struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
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

var<private> global0: array<f32, 6> = array<f32, 6>(546f, -241f, 306f, 1291f, 345f, -479f);

var<private> global1: array<u32, 2>;

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<f32, 10>;

var<private> global4: vec3<u32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> u32 {
    return global4.x;
}

fn func_3() -> u32 {
    global0 = array<f32, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1139f, global0[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-330f, 128f), vec2<f32>(global0[_wgslsmith_index_u32(2275u, 6u)], 954f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-990f)))), _wgslsmith_f_op_f32(298f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-640f, -1000f)))));
    var var_1 = max(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -2147483647i, 0i, _wgslsmith_sub_i32(u_input.a.x, u_input.b)), ~(~vec4<i32>(2147483647i, 1i, u_input.b, -12468i))), _wgslsmith_sub_vec4_i32(~vec4<i32>(24289i, 2147483647i, u_input.b, 29618i), firstLeadingBit(vec4<i32>(40660i, -2147483647i, -2147483647i, u_input.b))) << (vec4<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(60138u, 2u)], 2u)], _wgslsmith_add_u32(12266u, 0u), countOneBits(global4.x), global1[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)]) % vec4<u32>(32u))) << ((select(~(vec4<u32>(29347u, global4.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]) ^ vec4<u32>(51101u, global1[_wgslsmith_index_u32(1u, 2u)], 0u, global1[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, global4.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12618u, 2u)], 2u)], global4.x), ~vec4<u32>(global4.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 1u)), !any(vec2<bool>(false, true))) >> (reverseBits(max(max(vec4<u32>(4294967295u, 115794u, u_input.c, global4.x), vec4<u32>(1u, 1u, 4294967295u, 72190u)), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(13387u, 2u)], 4294967295u, 65789u, 1u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = var_1.x ^ abs(-1i);
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~(12755u << (global4.x % 32u)), max(4294967295u, ~u_input.c)), ~firstTrailingBit(4294967295u)), vec2<u32>(_wgslsmith_sub_u32(~(~global4.x), ~max(global1[_wgslsmith_index_u32(u_input.c, 2u)], 0u)), 4294967295u));
    return ~12565u;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(vec3<bool>(countOneBits(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(43142u, 2u)], 4294967295u, false), 2u)]) > ~arg_0.e, true, true), vec2<i32>(_wgslsmith_mod_i32(reverseBits(u_input.b), -33998i), arg_0.b.x), ~5433u, arg_0.d, firstTrailingBit(4294967295u));
    global4 = ~((~vec3<u32>(global1[_wgslsmith_index_u32(global4.x, 2u)], 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 2u)]) | abs(vec3<u32>(17457u, u_input.c, u_input.c))) & vec3<u32>(firstLeadingBit(u_input.c), _wgslsmith_add_u32(u_input.c, var_0.c), 1u)) << (~(_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(5261u, 2u)], var_0.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 2u)], 2u)]), vec3<u32>(arg_0.c, var_0.c, 4294967295u) >> (vec3<u32>(u_input.c, 54895u, arg_0.e) % vec3<u32>(32u))) ^ ~select(vec3<u32>(var_0.c, 1u, var_0.e), vec3<u32>(20071u, u_input.c, u_input.c), var_0.a.x)) % vec3<u32>(32u));
    global1 = array<u32, 2>();
    global2 = array<Struct_1, 29>();
    global1 = array<u32, 2>();
    return arg_0.b.x;
}

fn func_2() -> u32 {
    global1 = array<u32, 2>();
    var var_0 = global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.c, 42425u), 30260u) ^ 1u), 29u)];
    let var_1 = !(!(!(!var_0.a.x)));
    let var_2 = select(vec3<i32>(func_4(global2[_wgslsmith_index_u32(func_3(), 29u)]), ~var_0.b.x, var_0.b.x), firstTrailingBit(vec3<i32>(countOneBits(i32(-1i) * -1122i), _wgslsmith_mod_i32(-1i, u_input.a.x), -1i)), !select(select(vec3<bool>(true, var_0.a.x, var_1), select(var_0.a, var_0.a, var_1), !vec3<bool>(true, var_1, true)), vec3<bool>(false, true, true), var_0.a));
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(_wgslsmith_sub_u32(select(30938u, 105003u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(25037u, global4.x, var_0.c, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, 67640u)))), _wgslsmith_mod_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(4294967295u, 34463u), ~firstTrailingBit(var_0.c)), ~countOneBits(4294967295u))), 29u)];
    return global1[_wgslsmith_index_u32(~(~(~34794u)), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), -1249f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1021f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global4.x, 6u)] - global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 6u)]))), global3[_wgslsmith_index_u32(~106766u >> (~global1[_wgslsmith_index_u32(global4.x, 2u)] % 32u), 10u)])), -1145f));
    var var_1 = global2[_wgslsmith_index_u32(~func_1() | ~u_input.c, 29u)];
    global4 = ~vec3<u32>(_wgslsmith_mult_u32(global4.x, (global1[_wgslsmith_index_u32(0u, 2u)] ^ global1[_wgslsmith_index_u32(1u, 2u)]) | ~4738u), ~(~_wgslsmith_sub_u32(63449u, 21762u)), func_2());
    let var_2 = var_1.a.x;
    let var_3 = vec2<bool>(all(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x)), false);
    let var_4 = !(!vec4<bool>(true, select(var_1.a.x, select(true, var_3.x, true), var_1.a.x), !any(vec2<bool>(true, true)), true));
    var var_5 = global2[_wgslsmith_index_u32(~31630u, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-964f, 234f, global3[_wgslsmith_index_u32(1u, 10u)]) * vec3<f32>(-625f, 1488f, -991f)))))), global4.x);
}

