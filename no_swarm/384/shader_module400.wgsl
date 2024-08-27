struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(28353i, 75322i), vec2<i32>(i32(-2147483648), -30322i), vec2<i32>(0i, 0i), vec2<i32>(i32(-2147483648), 9373i), vec2<i32>(-20259i, 25813i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(22155i, 68065i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-34762i, 0i), vec2<i32>(11028i, 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-28862i, 0i), vec2<i32>(-60432i, 93814i), vec2<i32>(28430i, 61543i), vec2<i32>(34041i, 16866i), vec2<i32>(-16210i, -28557i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-5491i, 1i), vec2<i32>(1i, -10525i), vec2<i32>(4782i, -20331i), vec2<i32>(-61373i, i32(-2147483648)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global2 = array<vec2<i32>, 23>();
    global2 = array<vec2<i32>, 23>();
    let var_0 = global1.a;
    global0 = Struct_2(~(~(~u_input.b.xx) | arg_0.yy));
    global1 = Struct_1(u_input.a.wzz, select(vec3<bool>(false, all(select(vec3<bool>(false, global1.b.x, false), vec3<bool>(true, false, global1.b.x), false)), any(vec3<bool>(global1.b.x, global1.b.x, false))), select(!select(vec3<bool>(global1.b.x, false, false), vec3<bool>(false, true, false), vec3<bool>(false, global1.b.x, global1.b.x)), select(select(vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(false, global1.b.x, true), vec3<bool>(true, global1.b.x, global1.b.x)), !global1.b, true), global1.b.x), any(!vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x))), 2147483647i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.d, -482f)))));
    return 12254u;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_2(vec2<u32>(countOneBits(min(global0.a.x, arg_0.x)) | _wgslsmith_div_u32(0u, 47448u), abs(_wgslsmith_sub_u32(func_3(arg_0), _wgslsmith_sub_u32(4294967295u, u_input.b.x)))));
    var var_1 = firstLeadingBit(var_0.a);
    let var_2 = var_0.a.x;
    global0 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-1000f * global1.d);
    return _wgslsmith_add_i32(firstTrailingBit(10371i >> (u_input.b.x % 32u)), 32845i);
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = global1.a;
    var var_1 = global1.b.xy;
    let var_2 = _wgslsmith_sub_i32(reverseBits(-5555i), -func_2(vec4<u32>(4294967295u, 13551u, global0.a.x, 0u))) & -2147483647i;
    global2 = array<vec2<i32>, 23>();
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1009f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1006f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1312f - global1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d))) * global1.d));
    return Struct_1(vec3<i32>(-u_input.c, var_0.x, firstLeadingBit(-68371i)), vec3<bool>(true, false, all(vec3<bool>(true, global1.b.x, !var_1.x))), firstLeadingBit(-50458i), 2004f);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(func_2(~(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, u_input.b.x, u_input.b.x, global0.a.x), vec4<u32>(98740u, 40163u, 36245u, u_input.b.x)) ^ vec4<u32>(73412u, u_input.b.x, 4294967295u, global0.a.x))));
    global1 = Struct_1(~(~var_0.a), var_0.b, ~(~(-(~(-1i)))), 510f);
    global1 = var_0;
    global1 = var_0;
    global0 = Struct_2(vec2<u32>(u_input.b.x, global0.a.x));
    return StorageBuffer(~(-1i), vec2<u32>(global0.a.x, _wgslsmith_clamp_u32(~88620u, 36108u, ~28957u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -438f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

