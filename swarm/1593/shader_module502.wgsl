struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(923f, -890f, 2347f), 0i);

var<private> global2: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(0u, 11151u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(15143u, 1u), vec2<u32>(28890u, 0u), vec2<u32>(14138u, 0u), vec2<u32>(1u, 65761u), vec2<u32>(21437u, 17253u), vec2<u32>(79097u, 71918u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(64930u, 33675u), vec2<u32>(22567u, 13725u), vec2<u32>(1u, 0u), vec2<u32>(1u, 27427u), vec2<u32>(55768u, 0u), vec2<u32>(12271u, 1u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(-select(arg_0.b, global1.b, arg_1.x | false), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-314f, -1000f, -730f) * global1.a), -2147483647i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a.a, global1.a, global0.zzw)) - _wgslsmith_f_op_vec3_f32(arg_0.a.a * vec3<f32>(779f, arg_0.a.a.x, arg_0.a.a.x))), -firstTrailingBit(-31382i))), Struct_2(-7592i, arg_0.a, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(843f, -1703f, 1000f)) + arg_0.a.a), ~(-u_input.a))));
    var var_1 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), 1379f, _wgslsmith_f_op_f32(abs(var_0.b.b.a.x))), u_input.a & abs(abs(1i))), _wgslsmith_mult_i32(0i, 19602i << (_wgslsmith_dot_vec4_u32(vec4<u32>(38166u, arg_0.d.x, arg_0.d.x, arg_0.d.x), abs(vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 1u))) % 32u)), u_input.a, vec2<u32>(arg_0.d.x ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 36630u, 1u, arg_0.d.x), vec4<u32>(0u, arg_0.d.x, arg_0.d.x, arg_0.d.x)), _wgslsmith_dot_vec2_u32(arg_0.d, vec2<u32>(arg_0.d.x, arg_0.d.x))), _wgslsmith_mod_u32(0u, ~(arg_0.d.x >> (1u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.a.b.a.x, var_0.b.b.a.x))))));
    var_0 = Struct_3(var_0.a, var_0.b);
    var var_2 = Struct_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.a.a.x)), _wgslsmith_f_op_f32(var_1.a.a.x - 523f), arg_0.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -508f, arg_0.e)), _wgslsmith_f_op_vec3_f32(trunc(var_0.b.b.a)))), -2147483647i), _wgslsmith_add_i32(~(-abs(-2147483647i)), 1i), i32(-1i) * -2147483647i, _wgslsmith_mult_vec2_u32(~vec2<u32>(reverseBits(arg_0.d.x), arg_0.d.x), vec2<u32>(~_wgslsmith_dot_vec2_u32(var_1.d, vec2<u32>(arg_0.d.x, 47743u)), 68836u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -928f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -184f))));
    let var_3 = arg_0.a;
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x))))))), var_0.b.c.a.x, _wgslsmith_f_op_f32(var_2.a.a.x - _wgslsmith_f_op_f32(864f * _wgslsmith_f_op_f32(-139f - 231f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<f32> {
    return arg_0.c.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = 1u;
    global2 = array<vec2<u32>, 17>();
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_mod_i32(select(firstTrailingBit(0i), 1i, !global0.x), global1.b), arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_1(global1.a, global1.b), arg_1.b, u_input.a, vec2<u32>(20983u, 4294967295u), 1423f), select(global0.wz, vec2<bool>(global0.x, false), false))), u_input.a)), -vec2<i32>(9450i, firstLeadingBit(-1i)), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 0u, 9078u, var_0) >> (vec4<u32>(4294967295u, var_0, 40885u, 902u) % vec4<u32>(32u)), select(vec4<u32>(12934u, var_0, 28024u, var_0), vec4<u32>(var_0, var_0, 45499u, var_0), global0.x)) ^ ~vec4<u32>(var_0, 1u, 27398u, var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1450f, -928f, 279f)))), 2147483647i)));
    let var_2 = Struct_1(arg_1.a, global1.b);
    global1 = arg_1;
    return vec4<bool>(true, global0.x, global0.x, true);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_2 {
    global0 = !select(vec4<bool>(!(!global0.x), global0.x == true, false, !(arg_1 > arg_1)), !func_2(vec2<f32>(1311f, global1.a.x), Struct_1(global1.a, -1i)), vec4<bool>(true, true, true, false));
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.a + global1.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 569f, global1.a.x)))), 19422i), global1.b, -select(0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, global1.b, -1i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), false), global2[_wgslsmith_index_u32(abs(max(14590u, countOneBits(49112u))) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, arg_1), ~vec4<u32>(arg_1, 10291u, 4294967295u, arg_1)) % 32u), 17u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-416f, 583f)))) + _wgslsmith_f_op_f32(global1.a.x + arg_0.x)), global1.a.x));
    global2 = array<vec2<u32>, 17>();
    var_0 = Struct_4(Struct_1(_wgslsmith_div_vec3_f32(var_0.a.a, _wgslsmith_f_op_vec3_f32(-var_0.a.a)), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, 15523i)), vec2<i32>(-43081i, global1.b) << (global2[_wgslsmith_index_u32(4294967295u, 17u)] % vec2<u32>(32u))) ^ 1i), 2147483647i, min(abs(1i), firstTrailingBit(_wgslsmith_add_i32(1i, var_0.c) >> (arg_1 % 32u))), select(vec2<u32>(arg_1, max(arg_1, arg_1)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(25774u, var_0.d.x)) % vec2<u32>(32u)), abs(var_0.d), !select(vec2<bool>(false, global0.x), global0.yx, func_2(var_0.a.a.yy, var_0.a).xy)), 877f);
    var var_1 = Struct_3(Struct_2(1i, var_0.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), -1000f, -439f), ~global1.b)), Struct_2(select(global1.b, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, global1.b), vec2<i32>(u_input.a, 2147483647i))), (true | global0.x) || global0.x), Struct_1(global1.a, _wgslsmith_mod_i32(1i, u_input.a & u_input.a)), var_0.a));
    return var_1.b;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = select(~1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 71043u, 1u), vec4<u32>(0u, 0u, 4294967295u, 24111u)) >> (32440u % 32u)), any(vec3<bool>(any(vec2<bool>(global0.x, false)) && false, true, !any(vec4<bool>(global0.x, global0.x, true, false)))));
    global2 = array<vec2<u32>, 17>();
    global2 = array<vec2<u32>, 17>();
    let var_1 = select(select(func_2(_wgslsmith_f_op_vec2_f32(trunc(arg_0.zx)), func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(529f, arg_0.x), vec2<f32>(-944f, -827f))), 16012u).b).xxz, !global0.wxy, !global0.zxw), global0.ywy, global0.zwz);
    global0 = vec4<bool>(any(!var_1.xz), var_1.x, true, false);
    return arg_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2585f), -1632f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.x)) + global1.a.x), global1.a.x, _wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(max(global1.a.x, -1083f)))), _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -14832i), vec2<i32>(1i, -2147483647i)), firstLeadingBit(vec2<i32>(u_input.a, u_input.a)) & _wgslsmith_add_vec2_i32(vec2<i32>(8739i, -185i), vec2<i32>(global1.b, global1.b))) << (max(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(1u, 17u)]) % vec2<u32>(32u)), Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.zy)), ~(~4294967295u)), Struct_2(-global1.b << (1u % 32u), Struct_1(_wgslsmith_div_vec3_f32(global1.a, vec3<f32>(788f, 1286f, global1.a.x)), u_input.a), Struct_1(vec3<f32>(176f, -1566f, global1.a.x), 48157i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2098f) - 983f);
    let var_2 = Struct_3(func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 223f)))), 1u), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.b ^ u_input.a, -1966i, 25506i << (1u % 32u)), -abs(vec4<i32>(20990i, -11410i, var_0.b, -12360i))), func_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_1(vec3<f32>(994f, global1.a.x, 895f), 44998i), global1.b, 1i, vec2<u32>(55136u, 0u), global1.a.x), select(vec2<bool>(true, true), global0.wz, global0.x))).xx, ~min(17476u, 0u)).c, func_5(vec4<f32>(_wgslsmith_f_op_f32(-486f - var_0.a.x), -288f, -1000f, -474f), min(-vec2<i32>(16088i, var_0.b), -vec2<i32>(u_input.a, var_0.b)), Struct_3(func_1(vec2<f32>(var_0.a.x, 263f), 1u), Struct_2(-9361i, Struct_1(global1.a, u_input.a), Struct_1(global1.a, 21119i))))));
    let var_3 = true;
    var var_4 = select(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~firstTrailingBit(vec2<i32>(36062i, -2910i)), vec2<i32>(_wgslsmith_div_i32(var_0.b, -6449i), 45885i & var_2.b.a)), ~vec2<i32>(func_5(vec4<f32>(global1.a.x, 563f, 446f, 556f), vec2<i32>(1161i, global1.b), var_2).b, -2147483647i)), ~firstTrailingBit(-1i), false);
    let var_5 = _wgslsmith_f_op_f32(var_0.a.x - 644f);
    var_4 = -2147483647i;
    var var_6 = vec2<bool>(false, false);
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(19445u, 7573u), 41615u >> (0u % 32u)), reverseBits(global2[_wgslsmith_index_u32(0u, 17u)] | global2[_wgslsmith_index_u32(75664u, 17u)])), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_sub_vec2_u32(countOneBits(~vec2<u32>(27358u, 4294967295u)), global2[_wgslsmith_index_u32(~27304u, 17u)]) & global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(63850u, 0u), global2[_wgslsmith_index_u32(4493u, 17u)]), ~1u), firstTrailingBit(4294967295u) << (~0u % 32u)), 17u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.b.c.a.x, var_0.a.x, -148f))))));
}

