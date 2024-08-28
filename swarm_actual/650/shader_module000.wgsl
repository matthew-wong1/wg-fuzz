struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<f32, 9>;

var<private> global2: array<Struct_2, 28>;

var<private> global3: vec4<u32> = vec4<u32>(74229u, 33222u, 0u, 0u);

var<private> global4: vec3<u32> = vec3<u32>(1u, 1u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = arg_0.e;
    let var_1 = any(!vec3<bool>(false, false, _wgslsmith_f_op_f32(arg_0.a - global1[_wgslsmith_index_u32(global4.x, 9u)]) >= var_0.d));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.e.d), global1[_wgslsmith_index_u32(abs(arg_1.x), 9u)], any(vec3<bool>(true, var_1, true)) || true)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.e.d)))), _wgslsmith_div_vec2_u32(select(~vec2<u32>(1u, arg_0.e.a.x), global3.zy, var_1), firstLeadingBit(~arg_0.d.xy) & select(~arg_0.e.a.yz, global4.xz << (global3.zy % vec2<u32>(32u)), !var_1)), vec4<i32>(-1i) * -arg_0.c, firstLeadingBit(var_0.b), Struct_1(~vec4<u32>(~0u, arg_0.b.x, ~arg_1.x, global3.x), ~(~vec4<u32>(global4.x, 88363u, arg_1.x, 0u)), vec2<i32>(1i, u_input.c.x) << (vec2<u32>(1u, abs(var_0.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f)))));
    let var_3 = !any(select(vec3<bool>(!var_1, false, true), !select(vec3<bool>(false, true, var_1), vec3<bool>(false, var_1, false), vec3<bool>(false, true, var_1)), true));
    global3 = vec4<u32>(674u, min(343u, 1u) << (global4.x % 32u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(4294967295u, 15425u)), ~global4.x) >> (var_2.e.b.x % 32u), 23997u);
    return vec4<u32>(4294967295u, var_2.b.x, ~(~(~global4.x)), ~_wgslsmith_dot_vec4_u32(var_2.d, _wgslsmith_div_vec4_u32(vec4<u32>(global4.x, 51428u, 0u, arg_1.x), vec4<u32>(global4.x, arg_0.e.a.x, arg_0.e.a.x, 14578u))));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    global3 = func_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.x, 1u), 28u)], vec2<u32>(arg_0, global3.x << (6127u % 32u)), -abs(~(~vec3<i32>(u_input.a, -2147483647i, u_input.a))));
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(arg_2.x, 9u)])))))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.x, 9u)] + 851f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), false | any(!(!vec2<bool>(false, arg_1.x))), arg_1.x, any(arg_1));
    var var_1 = Struct_1(firstTrailingBit(~min(vec4<u32>(0u, global3.x, 43214u, 78421u), vec4<u32>(98080u, arg_2.x, arg_2.x, 0u)) | vec4<u32>(1u, _wgslsmith_add_u32(arg_0, 4294967295u), ~1u, global3.x)), countOneBits(~((vec4<u32>(0u, arg_0, 4294967295u, arg_2.x) | vec4<u32>(1u, 35893u, 1u, global4.x)) << (vec4<u32>(4294967295u, 25681u, 5311u, global3.x) % vec4<u32>(32u)))), u_input.c | ~vec2<i32>(1i & u_input.c.x, 2147483647i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-765f, global1[_wgslsmith_index_u32(2349u, 9u)])))))), global1[_wgslsmith_index_u32(firstLeadingBit(~0u), 9u)])));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.d)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + -454f))), -580f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, -573f))));
    let var_3 = Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(abs(var_1.b), ~var_1.a) << (~(var_1.a & var_1.b) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(countOneBits(~4294967295u), _wgslsmith_mult_u32(global3.x, var_1.b.x) >> (1u % 32u), select(0u << (global4.x % 32u), global4.x, all(arg_1)), ~arg_0)), u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f * global1[_wgslsmith_index_u32(global3.x, 9u)]) * -1961f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 9u)])), all(select(arg_1.xy, arg_1.zy, arg_1.xz)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)) * var_2.x)));
    return ~var_1.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = func_2(1u, vec3<bool>(0u >= _wgslsmith_mult_u32(~0u, global4.x), true, false), vec3<u32>(~4294967295u, global3.x, ~_wgslsmith_sub_u32(global4.x, ~4294967295u)));
    var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~global4.x, arg_0.e.b.x << (arg_0.d.x % 32u), arg_0.e.a.x), arg_0.e.b.xyy), firstTrailingBit(func_3(global0[_wgslsmith_index_u32(0u | arg_1.e.b.x, 6u)], ~vec2<u32>(arg_0.d.x, 21471u), arg_0.c.wxy).x)) ^ 85565u;
    var var_1 = Struct_1(abs(vec4<u32>(9591u, 12610u, 103775u, arg_0.d.x)), func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(401f, -341f))), _wgslsmith_div_vec2_u32(~global4.yx, vec2<u32>(55207u, global4.x)), arg_0.c, (arg_0.e.a >> (vec4<u32>(global3.x, global4.x, 119863u, 20286u) % vec4<u32>(32u))) | ~arg_1.e.b, Struct_1(arg_1.d, vec4<u32>(global4.x, global4.x, global3.x, 8344u), reverseBits(arg_0.e.c), -283f)), firstLeadingBit(select(~arg_0.d.xx, func_3(arg_0, vec2<u32>(21271u, 36260u), vec3<i32>(arg_0.e.c.x, -64555i, 17536i)).zx, vec2<bool>(true, true))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.b, arg_1.c.x, 2260i)), ~arg_1.c.xxx) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 43921u, arg_0.b.x), ~arg_0.e.b.yww) % vec3<u32>(32u))), vec2<i32>(min(-20682i, -20726i), _wgslsmith_mult_i32(arg_0.c.x ^ arg_1.e.c.x, abs(u_input.b)) & -_wgslsmith_mult_i32(u_input.c.x, 2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + 1000f) - 611f) + global1[_wgslsmith_index_u32(global4.x, 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.e.d))))));
    global4 = ~vec3<u32>(arg_0.d.x, global3.x, 33357u);
    let var_2 = vec3<bool>(!(any(vec2<bool>(false, true)) && false) & select(!all(vec4<bool>(false, true, true, false)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), all(vec2<bool>(true, false))), true, 0u < global4.x);
    return arg_1.e;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_2.a.x, 1u), 6u)];
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    var var_1 = any(select(vec2<bool>(true, arg_0.x), select(vec2<bool>(arg_0.x, false), arg_0.ww, false), true));
    global1 = array<f32, 9>();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(select(global3.x, global3.x, false) & 1u, firstTrailingBit(~global3.x), global3.x, global3.x) & (vec4<u32>(select(1u, global3.x, false), global4.x, global3.x, _wgslsmith_sub_u32(global4.x, 19144u)) << ((~vec4<u32>(3806u, 21880u, global4.x, global4.x) ^ _wgslsmith_add_vec4_u32(vec4<u32>(10650u, global3.x, 4294967295u, global4.x), vec4<u32>(14947u, global3.x, 1u, global4.x))) % vec4<u32>(32u))), countOneBits(firstLeadingBit(func_4(vec4<bool>(true, true, true, true), ~global3.x, func_1(global0[_wgslsmith_index_u32(global4.x, 6u)], Struct_2(global1[_wgslsmith_index_u32(global4.x, 9u)], vec2<u32>(33180u, 43138u), vec4<i32>(u_input.b, u_input.a, 80768i, -1i), vec4<u32>(global3.x, global3.x, global3.x, global4.x), Struct_1(vec4<u32>(global3.x, 0u, global3.x, 2426u), vec4<u32>(global3.x, 58053u, 0u, global3.x), u_input.c, global1[_wgslsmith_index_u32(global4.x, 9u)])))))), u_input.c, _wgslsmith_f_op_f32(max(269f, global1[_wgslsmith_index_u32(func_1(Struct_2(905f, global4.xx, reverseBits(vec4<i32>(u_input.a, u_input.b, u_input.c.x, -1890i)), firstTrailingBit(vec4<u32>(41294u, 4294967295u, global3.x, global3.x)), func_1(Struct_2(-204f, vec2<u32>(global3.x, 4294967295u), vec4<i32>(u_input.b, u_input.b, -13592i, u_input.a), vec4<u32>(global3.x, 1u, 22035u, 17414u), Struct_1(vec4<u32>(22607u, 5600u, global4.x, 0u), vec4<u32>(global3.x, global4.x, 28702u, global3.x), vec2<i32>(-2147483647i, u_input.a), 152f)), global2[_wgslsmith_index_u32(global3.x, 28u)])), global2[_wgslsmith_index_u32(1u, 28u)]).a.x, 9u)])));
    global1 = array<f32, 9>();
    let var_1 = global0[_wgslsmith_index_u32((~(~_wgslsmith_div_u32(40736u, var_0.a.x)) ^ ~select(func_3(Struct_2(-268f, global3.ww, vec4<i32>(var_0.c.x, -5789i, -50868i, 12032i), vec4<u32>(global4.x, global4.x, 1u, 125182u), var_0), global3.yw, vec3<i32>(-14878i, var_0.c.x, var_0.c.x)).x, 1u, select(false, true, true))) ^ ~(~1u), 6u)];
    var var_2 = max(var_1.c.zwy, var_1.c.zzx);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(735f, _wgslsmith_f_op_f32(ceil(1131f)), true)), var_0.d))), _wgslsmith_f_op_f32(max(var_0.d, global1[_wgslsmith_index_u32(global4.x, 9u)])), -177f);
    global1 = array<f32, 9>();
    let var_4 = Struct_1(~abs(var_0.b), var_1.e.b, reverseBits(_wgslsmith_mult_vec2_i32(var_1.e.c, firstTrailingBit(u_input.c) << (global3.wy % vec2<u32>(32u)))), func_1(global2[_wgslsmith_index_u32(31085u, 28u)], Struct_2(402f, ~vec2<u32>(0u, 4294967295u) & func_3(Struct_2(var_3.x, var_1.b, vec4<i32>(-2147483647i, 0i, -2147483647i, 1i), var_0.b, Struct_1(var_0.b, vec4<u32>(var_1.d.x, 4294967295u, 0u, global4.x), var_1.e.c, var_0.d)), global4.yx, vec3<i32>(u_input.b, var_1.c.x, -1i)).xx, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(21441i, 2147483647i), vec2<i32>(-2147483647i, var_0.c.x)), firstLeadingBit(u_input.c.x), reverseBits(u_input.c.x), 1i), vec4<u32>(var_0.a.x, 87833u, 1u, 1u), var_1.e)).d);
    global2 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_vec2_f32(-var_3.zy), (var_1.d.x & var_0.a.x) & 14432u);
}

