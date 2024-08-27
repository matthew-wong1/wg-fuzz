struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(67075u, 1u, 114390u, 0u, 73372u, 1u, 0u, 1u, 1u, 32875u, 20323u, 0u, 4294967295u, 1u, 72972u, 4294967295u, 4294967295u, 4294967295u, 5534u, 1u, 12106u, 0u, 25036u, 84655u, 22563u, 4294967295u, 1u, 28331u);

var<private> global1: Struct_3 = Struct_3(vec2<u32>(0u, 4294967295u), vec4<f32>(-269f, 2397f, -1000f, -1071f), i32(-2147483648));

var<private> global2: vec4<i32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(14097i, i32(-2147483648)), vec3<i32>(-25430i, 10987i, 51846i), 28520u, 1u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    var var_0 = 26637u;
    let var_1 = !(!(!arg_0.a.yx));
    global2 = -vec4<i32>(-12637i, _wgslsmith_dot_vec4_i32(countOneBits(u_input.d | vec4<i32>(-20640i, -1i, u_input.d.x, u_input.d.x)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, global1.c, 46206i, -533i), vec4<i32>(9004i, arg_2, global1.c, -29339i) >> (vec4<u32>(16621u, 1u, 36001u, arg_0.c.c) % vec4<u32>(32u)), ~vec4<i32>(-1i, global3.a.b, 2147483647i, global3.b.x))), global2.x, _wgslsmith_mult_i32(global3.a.a, -_wgslsmith_sub_i32(global2.x, u_input.c.x)));
    let var_2 = arg_2;
    global0 = array<u32, 28>();
    return ~_wgslsmith_clamp_i32(firstTrailingBit(0i), 1i, 28346i);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(!(!vec3<bool>(all(vec2<bool>(false, false)), false, global1.b.x < global1.b.x)), Struct_4(Struct_3((global1.a & global1.a) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(24378u, global1.a.x)), _wgslsmith_f_op_vec4_f32(-global1.b), abs(func_3(Struct_5(vec3<bool>(false, false, false), Struct_4(Struct_3(vec2<u32>(global3.d, 4294967295u), global1.b, global3.a.b), global2.ywx), Struct_2(global3.a, global3.b, global3.c, global3.d), global1.a), true, 2147483647i, vec4<bool>(false, true, false, true)))), u_input.d.wyz), Struct_2(global3.a, countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(-4724i, -7211i, -50361i), vec3<i32>(global2.x, 1452i, u_input.b.x))) ^ _wgslsmith_clamp_vec3_i32(global2.wzw, global3.b, global2.xzx ^ vec3<i32>(u_input.d.x, 303i, 1i)), ~1u, ~(~global3.d)), _wgslsmith_clamp_vec2_u32(~global1.a, ~vec2<u32>(global0[_wgslsmith_index_u32(global1.a.x, 28u)], abs(global0[_wgslsmith_index_u32(15055u, 28u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a.x), global1.a)), ~max(vec2<u32>(52253u, 1u), global1.a), _wgslsmith_add_vec2_u32(select(vec2<u32>(1u, 21963u), vec2<u32>(32461u, 4294967295u), vec2<bool>(true, false)), ~global1.a))));
    let var_1 = Struct_3(vec2<u32>(global1.a.x, reverseBits(_wgslsmith_clamp_u32(~var_0.d.x, firstTrailingBit(42893u), 1u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1113f, global1.b.x, 197f, -724f))), global1.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, _wgslsmith_div_i32(28472i, -19838i), 22666i) ^ (vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.c.x, 1i)), u_input.d.zyz));
    global1 = var_0.b.a;
    global3 = Struct_2(var_0.c.a, _wgslsmith_sub_vec3_i32(max(abs(-vec3<i32>(0i, 1531i, 1i)), global3.b), u_input.d.yzz), abs(13778u), _wgslsmith_add_u32(firstTrailingBit(abs(global1.a.x)), _wgslsmith_clamp_u32(~4353u, global3.c & (var_0.d.x & 10711u), firstTrailingBit(select(38697u, 79002u, var_0.a.x)))));
    global2 = vec4<i32>(var_0.b.b.x, -3278i, 0i, global3.a.a);
    return Struct_3(max(_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, 67405u & global1.a.x), vec2<u32>(var_1.a.x, global3.d >> (39295u % 32u))), vec2<u32>(global3.d, abs(~4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(var_1.b))))))), -42528i);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: vec2<f32>) -> i32 {
    global1 = func_2();
    var var_0 = vec2<i32>(global3.b.x, global1.c & ~2147483647i);
    var_0 = global2.zx;
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, global3.b.x), global2.yx), firstLeadingBit(0i)), 0i), 36127i, firstTrailingBit(func_2().c), 1i);
    var var_2 = _wgslsmith_div_vec2_i32(-(~vec2<i32>(func_2().c, -14408i)), global3.b.zx);
    return -global1.c << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, global1.a.x, global1.a.x, global1.a.x), vec4<u32>(global0[_wgslsmith_index_u32(27118u, 28u)], 0u, global1.a.x, global3.c) >> (vec4<u32>(global1.a.x, arg_0.x, 38134u, 4294967295u) % vec4<u32>(32u))) ^ vec4<u32>(80157u, global3.d ^ global0[_wgslsmith_index_u32(global3.c, 28u)], ~82173u, arg_0.x), reverseBits(max(~vec4<u32>(1u, global3.d, 1u, global0[_wgslsmith_index_u32(global1.a.x, 28u)]), vec4<u32>(4294967295u, 1u, global3.d, global1.a.x)))) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x);
    return Struct_4(func_2(), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(13081i, u_input.b.x), -global3.b.x), ~_wgslsmith_div_vec2_i32(global3.b.xz, global2.xw)), -global2.x, i32(-1i) * -7155i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(global2.x, select(_wgslsmith_add_i32(func_1(vec3<u32>(42059u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)]), false, global2.x, global1.b.yx), global3.a.b << (0u % 32u)), global3.a.b, all(vec2<bool>(true, false)))), global3.a);
    var var_1 = global3.a;
    global3 = Struct_2(global3.a, global2.zwy, global0[_wgslsmith_index_u32(var_0.a.a.x, 28u)], select(~4294967295u, ~4294967295u, any(vec4<bool>(true, true, true, true))));
    global1 = Struct_3(func_2().a & ~firstTrailingBit(min(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<u32>(global1.a.x, 1u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), _wgslsmith_f_op_f32(min(var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.b.x, var_0.a.b.x) - _wgslsmith_f_op_f32(floor(var_0.a.b.x))))), _wgslsmith_f_op_f32(floor(var_0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f * var_0.a.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1620f))), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, var_1.b), countOneBits(reverseBits(~2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1551f)), var_0.a.b.x));
    var_1 = global3.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_i32(~reverseBits(global2.x), firstLeadingBit(var_0.a.c)), _wgslsmith_add_i32(_wgslsmith_mod_i32(~u_input.b.x, max(-53156i, -11353i)), -10141i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, firstLeadingBit(-1i), -52128i), u_input.d.ywx), func_2().a.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(63137u);
}

