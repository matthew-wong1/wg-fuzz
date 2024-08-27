struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: vec4<i32>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global3: vec3<i32>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    global3 = global4.c.yww;
    var var_0 = ~abs(global2.x);
    global0 = array<f32, 31>();
    var var_1 = select((global4.b & vec4<i32>(1i, -13336i, -10112i >> (global4.a.x % 32u), 55281i << (global2.x % 32u))) | global4.b, select(global4.b, global4.b, true), false);
    let var_2 = Struct_2(global4.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-57739i, var_1.x, -9830i, global3.x) & global4.b, ~global4.c), ~_wgslsmith_div_vec4_i32(global4.b, global4.c)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global4.b.x, global4.b.x, -27418i, 30730i), vec4<i32>(-21599i, 0i, -26608i, global1.x)) | ~global4.c), -(_wgslsmith_clamp_vec4_i32(global4.b, vec4<i32>(global3.x, global4.b.x, u_input.c, -1i), global4.b) & firstLeadingBit(global4.b >> (vec4<u32>(28240u, u_input.a.x, 0u, global4.a.x) % vec4<u32>(32u)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(20088u, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true)), global0[_wgslsmith_index_u32(30878u, 31u)], _wgslsmith_f_op_f32(-1942f * 1155f), _wgslsmith_f_op_f32(-694f - 2681f)) * vec4<f32>(_wgslsmith_f_op_f32(min(-304f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), 188f, -1449f, _wgslsmith_f_op_f32(762f + 461f)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = false;
    global3 = abs(global1.zyy);
    var_0 = false;
    var var_1 = func_2();
    let var_2 = vec2<u32>(u_input.b.x, 125695u);
    return arg_0;
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(35042u, 31u)])), _wgslsmith_f_op_f32(f32(-1f) * -1157f), true)) * _wgslsmith_f_op_f32(427f * -1241f));
    let var_1 = vec3<u32>(1u, ~(global2.x | reverseBits(global2.x << (global4.a.x % 32u))), global2.x);
    let var_2 = Struct_2(var_1.zz, vec4<i32>(-(~global4.b.x >> (~global4.a.x % 32u)), abs(~firstTrailingBit(-2147483647i)), global4.b.x, 2136i), _wgslsmith_mult_vec4_i32(func_1(Struct_2(reverseBits(global4.a), vec4<i32>(global3.x, global3.x, global1.x, -5947i), ~vec4<i32>(16309i, u_input.c, -1i, 47271i))).b, _wgslsmith_clamp_vec4_i32(global4.c, -vec4<i32>(global3.x, -2147483647i, global3.x, -19555i), max(vec4<i32>(62834i, -1i, -2147483647i, global1.x), global4.c))));
    global0 = array<f32, 31>();
    global3 = _wgslsmith_sub_vec3_i32(vec3<i32>(global4.b.x, var_2.c.x, global4.b.x), global4.b.xxz);
    return select(!select(vec4<bool>(true, 27316i != u_input.c, any(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_u32(var_2.a, var_1.zx) <= _wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(global4.a.x, var_2.a.x))), !(!vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true)), select(vec4<bool>(!all(vec2<bool>(true, false)), true || any(vec3<bool>(true, false, false)), true, true), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false, true, select(true, true, true) | true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), false)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> StorageBuffer {
    global2 = ~u_input.d.wy << (u_input.a % vec2<u32>(32u));
    var var_0 = vec3<i32>(-19256i, u_input.c, global3.x);
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(34293u, 31u)], _wgslsmith_div_f32(-2209f, global0[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 31u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.a.x, 31u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 340f, -401f, 2903f)) * vec4<f32>(546f, -2407f, 1202f, global0[_wgslsmith_index_u32(15656u, 31u)]))))));
    var var_3 = 7955u;
    return StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(arg_2.b.x, ~min(var_0.x, arg_1.b.x)), var_0.x), vec4<i32>(select(-88473i, -1i >> (0u % 32u), true) & abs(_wgslsmith_sub_i32(global4.c.x, u_input.c)), 8203i, 34635i, _wgslsmith_add_i32(-29566i >> (global4.a.x % 32u), global4.b.x) & max(2147483647i & arg_2.b.x, global1.x)), ~0i, _wgslsmith_f_op_f32(f32(-1f) * -1146f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(0u, Struct_2(vec2<u32>(66215u, reverseBits(0u)), min(~(vec4<i32>(-67573i, -2147483647i, global3.x, global3.x) | global4.c), ~global4.b), vec4<i32>(~(-23959i), -2147483647i, -9237i, global3.x)), func_1(Struct_2(global4.a ^ _wgslsmith_sub_vec2_u32(vec2<u32>(81156u, global4.a.x), global4.a), (global4.b ^ global4.b) | countOneBits(global4.b), select(global4.b, vec4<i32>(14873i, global3.x, global1.x, u_input.c), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))))), !func_3());
}

