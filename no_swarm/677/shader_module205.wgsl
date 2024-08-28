struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<u32>(63776u, 4294967295u, 14473u, 27562u), 1000f, 868f), Struct_1(vec4<u32>(45043u, 45256u, 33574u, 6809u), 565f, 956f), Struct_1(vec4<u32>(60619u, 55417u, 4294967295u, 4294967295u), -1000f, -654f), Struct_1(vec4<u32>(0u, 0u, 25602u, 57251u), -401f, 1083f), Struct_1(vec4<u32>(1u, 0u, 54482u, 8345u), -1695f, 196f), Struct_1(vec4<u32>(1u, 48758u, 68789u, 0u), 670f, 657f));

var<private> global1: array<vec3<i32>, 16>;

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: u32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<i32> {
    let var_0 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), true);
    var var_1 = Struct_1(~(~(~abs(global2.a))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.c))) - -729f));
    var var_2 = _wgslsmith_mod_u32(var_1.a.x, u_input.b.x);
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(24164u), 6u)];
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-772f)))));
    return firstTrailingBit(select(~vec2<i32>(-u_input.a, max(u_input.a, u_input.a)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -4367i)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(58084i, u_input.a)) | ~vec2<i32>(20559i, 60137i)), true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = ~(~arg_1.a.xzx);
    let var_1 = arg_1;
    var_0 = arg_0.a.yzz;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 16u)];
    let var_3 = i32(-1i) * -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -9991i, u_input.a, 23347i), min(vec4<i32>(2147483647i, u_input.a, -1i, var_2.x), vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i)), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), vec4<i32>(_wgslsmith_add_i32(-1i, var_2.x), abs(u_input.a), -38533i, var_2.x));
    return -func_3();
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<i32>(-u_input.a, -(0i | _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), func_2(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))), _wgslsmith_div_i32(-1i, countOneBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(28759i, 2147483647i), u_input.a))), select(firstLeadingBit(u_input.a), -2147483647i, global2.c <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1359f))));
    var var_1 = global0[_wgslsmith_index_u32(~firstTrailingBit(u_input.b.x), 6u)];
    var var_2 = 759f;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(u_input.a, firstTrailingBit(var_0.x), reverseBits(-var_0.x), var_0.x)), _wgslsmith_dot_vec2_i32(reverseBits(max(var_0.zw, vec2<i32>(6326i, -34759i) ^ vec2<i32>(var_0.x, 1i))), vec2<i32>(firstTrailingBit(u_input.a), ~u_input.a)));
    var_1 = global0[_wgslsmith_index_u32(~(~(~4294967295u)), 6u)];
    return Struct_1(global2.a, _wgslsmith_f_op_f32(min(global2.b, global2.b)), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~firstLeadingBit(global2.a), global2.c, _wgslsmith_f_op_f32(f32(-1f) * -1772f));
    global2 = Struct_1(max(_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(39758u, var_0.a.x, var_0.a.x, global2.a.x), var_0.a), ~var_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 101786u, u_input.b.x, 41796u) << (var_0.a % vec4<u32>(32u)), global2.a) >> ((~var_0.a | var_0.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(1270f - -1000f), 682f);
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_0.b), var_0.b);
    global2 = func_1();
    var var_2 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, var_0.a.x, 13187u, 42753u), global2.a));
    let var_3 = vec3<bool>(select(!(!select(false, false, false)), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false)))), var_0.a.x <= min(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5758u, var_0.a.x, u_input.b.x), vec3<u32>(44946u, var_0.a.x, 663u)), 1u), _wgslsmith_dot_vec2_u32(~global2.a.zx, abs(var_0.a.yw))), !any(vec4<bool>(true, all(vec4<bool>(true, false, true, true)), any(vec2<bool>(true, false)), false)));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~(~global2.a.x))), 1u), 6u)];
    var var_5 = func_1();
    global0 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(35433u, _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, countOneBits(u_input.a)), ~(vec2<i32>(-2147483647i, 47589i) & vec2<i32>(u_input.a, 2147483647i)) | -vec2<i32>(u_input.a, u_input.a), -select(vec2<i32>(19148i, -29630i), -vec2<i32>(u_input.a, u_input.a), any(vec4<bool>(true, false, var_3.x, var_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(select(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.b - global2.c)), var_3.x)), var_1.c, var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -716f)))))), _wgslsmith_clamp_u32(var_1.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~global2.a.yyx, firstLeadingBit(vec3<u32>(1u, var_0.a.x, global2.a.x))), _wgslsmith_mult_u32(var_4.a.x, var_5.a.x)), 70163u), _wgslsmith_sub_i32(reverseBits(u_input.a >> (global2.a.x % 32u)), 5725i));
}

