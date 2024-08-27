struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1i), 0u, false, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<i32>(i32(-2147483648), 41311i, 20657i), 1u, true, vec3<u32>(2472u, 4294967295u, 0u)), Struct_1(vec3<i32>(-1i, 15054i, 0i), 4294967295u, true, vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_1(vec3<i32>(-11792i, 1275i, 12616i), 4294967295u, false, vec3<u32>(579u, 4294967295u, 97390u)), Struct_1(vec3<i32>(-5716i, -4458i, 2147483647i), 10033u, false, vec3<u32>(1u, 31011u, 1u)), Struct_1(vec3<i32>(14119i, 56120i, 0i), 0u, true, vec3<u32>(66786u, 0u, 57181u)), Struct_1(vec3<i32>(11446i, 15486i, 2147483647i), 0u, false, vec3<u32>(7190u, 0u, 1u)), Struct_1(vec3<i32>(-1i, 32351i, 2147483647i), 0u, true, vec3<u32>(0u, 4294967295u, 12073u)), Struct_1(vec3<i32>(1i, -26173i, i32(-2147483648)), 57115u, true, vec3<u32>(19304u, 21332u, 4134u)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 0i), 0u, true, vec3<u32>(0u, 6501u, 14527u)), Struct_1(vec3<i32>(i32(-2147483648), -41228i, -31894i), 4294967295u, true, vec3<u32>(68486u, 1u, 0u)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -24925i), 0u, false, vec3<u32>(15833u, 4294967295u, 25747u)), Struct_1(vec3<i32>(8858i, -1i, -1i), 5351u, false, vec3<u32>(48258u, 4294967295u, 38054u)), Struct_1(vec3<i32>(7124i, i32(-2147483648), 0i), 29547u, false, vec3<u32>(4294967295u, 87960u, 18128u)));

var<private> global2: array<bool, 8> = array<bool, 8>(false, false, true, true, true, true, false, false);

var<private> global3: array<i32, 28>;

var<private> global4: Struct_1;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    let var_0 = vec2<f32>(834f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1143f, _wgslsmith_f_op_f32(f32(-1f) * -322f)), -142f)) + _wgslsmith_f_op_f32(floor(-976f))));
    global1 = array<Struct_1, 14>();
    global3 = array<i32, 28>();
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, ~u_input.c >> (select(u_input.c, 4826u, true) % 32u)), global4.d.x, arg_0.d.x), abs(global4.b)), 4u)];
    var var_1 = vec3<i32>(u_input.a, 0i, global4.a.x);
    return select(~(~(vec4<i32>(-1i, 27514i, -1i, var_1.x) & vec4<i32>(1i, 15488i, global3[_wgslsmith_index_u32(26568u, 28u)], 2147483647i))), ~abs(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global4.a.x, u_input.a, -5904i), vec4<i32>(global4.a.x, 23208i, 47525i, -43074i)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, 1i, 2147483647i, var_1.x), vec4<i32>(arg_0.a.x, 18771i, global3[_wgslsmith_index_u32(1u, 28u)], -2144i)))), vec4<bool>(!all(vec4<bool>(true, arg_0.c, global2[_wgslsmith_index_u32(u_input.c, 8u)], true)), !select(false, 4294967295u <= arg_0.d.x, true), all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(0u, 8u)], arg_1, false), true), true)), !global4.c));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = array<Struct_1, 14>();
    let var_0 = global1[_wgslsmith_index_u32(110211u, 14u)];
    let var_1 = reverseBits(vec4<i32>(var_0.a.x, (i32(-1i) * -1i) ^ -global4.a.x, global4.a.x, 1i) & func_3(Struct_1(vec3<i32>(global4.a.x, var_0.a.x, var_0.a.x), ~4294967295u, true, vec3<u32>(global4.d.x, u_input.c, u_input.c)), var_0.c));
    let var_2 = countOneBits(vec4<i32>(firstLeadingBit(0i), 6577i, 2147483647i, max(global3[_wgslsmith_index_u32(40173u, 28u)], ~(~50089i))));
    let var_3 = global0[_wgslsmith_index_u32(14615u & max((firstLeadingBit(arg_0.b) & (0u >> (global4.d.x % 32u))) | ~(~global4.b), 33342u), 4u)];
    return 57715u;
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    global0 = array<Struct_1, 4>();
    var var_0 = (global4.b >> (_wgslsmith_clamp_u32(29859u, countOneBits(u_input.c), func_2(Struct_1(vec3<i32>(u_input.b.x, 2147483647i, -34464i), 59727u, arg_0, global4.d))) % 32u)) << (min(firstTrailingBit(u_input.c), 4294967295u) % 32u);
    let var_1 = 1000f;
    var var_2 = Struct_1(global4.a, ~(~_wgslsmith_sub_u32(0u, arg_1)) & arg_1, arg_0, ~global4.d);
    var var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, u_input.c)), ~(global4.d.yy ^ global4.d.yz)) << (arg_1 % 32u), ~var_2.b, ~var_2.b ^ ~33618u);
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = Struct_1(reverseBits(vec3<i32>(15109i, arg_2.x, 38858i)) & -max(global4.a, arg_2.wzw), u_input.c, !(!(!all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(89936u, 8u)])))), ~vec3<u32>(4294967295u, 14430u, abs(min(arg_1, 54514u))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-521f, _wgslsmith_f_op_f32(f32(-1f) * -702f))))));
    var var_3 = ~(~global4.a.x) ^ global4.a.x;
    var var_4 = true;
    return vec2<f32>(702f, 1230f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 14u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global0[_wgslsmith_index_u32(1u, 4u)], func_1(false, 1u), vec4<i32>(var_0.a.x, -34160i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, global3[_wgslsmith_index_u32(38151u, 28u)]), -20509i, global3[_wgslsmith_index_u32(max(34753u, u_input.c), 28u)]), -37397i))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-294f, 479f) * vec2<f32>(1655f, -114f))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f + var_1.x))) + _wgslsmith_f_op_f32(f32(-1f) * -552f)), -1530f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x))))), -1240f);
    let var_3 = select(vec3<bool>(-1i > abs(firstLeadingBit(var_0.a.x)), global4.c, all(vec3<bool>(true | var_0.c, !global4.c, any(vec2<bool>(global2[_wgslsmith_index_u32(global4.d.x, 8u)], global4.c))))), !vec3<bool>(global2[_wgslsmith_index_u32(4531u, 8u)], var_0.c, false), !select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 8u)] || global2[_wgslsmith_index_u32(1u, 8u)], all(vec4<bool>(global2[_wgslsmith_index_u32(global4.d.x, 8u)], true, false, true))), vec3<bool>(var_0.c, !var_0.c, true), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 8u)], any(vec2<bool>(var_0.c, var_0.c)))));
    var var_4 = !(!vec3<bool>(!var_3.x, select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.d.x, 4294967295u), 8u)], global4.c, global2[_wgslsmith_index_u32(global4.b, 8u)] || true), any(vec3<bool>(false, var_3.x, true)) && true));
    let var_5 = max(vec4<u32>(_wgslsmith_add_u32(min(abs(var_0.b), ~41122u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), global4.d.yx)), 26347u, ~(~u_input.c), var_0.b), ~(~max(~vec4<u32>(0u, 84032u, global4.d.x, global4.d.x), vec4<u32>(0u, 7828u, var_0.d.x, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c, var_5.x), ~vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(var_0.d.x), ~9670u), ~min(var_5.x, 1u), ~_wgslsmith_div_u32(var_0.b, u_input.c), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), global4.d.yx), var_5.x)), global4.d.x);
}

